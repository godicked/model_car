/*
 * sample_nodelet_class.cpp

 */
#include "MotionPlanner.h"
#include <pluginlib/class_list_macros.h>
#include "spline.h"
#include "math.h"
#include <vector>
#include "Eigen-3.3/Eigen/Core"
#include "Eigen-3.3/Eigen/QR"
#include "Eigen-3.3/Eigen/LU"
#include <geometry_msgs/PointStamped.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf/tf.h>
#include <tf/transform_listener.h>
#include "time.h"
#include "polyfit.h"
#include <autonomos_obstacle_msgs/Obstacles.h>
#include <autonomos_obstacle_msgs/Obstacle.h>
#include <fub_trajectory_msgs/Trajectory.h>
#include <fub_trajectory_msgs/TrajectoryPoint.h>
//#include "CreateTraj2.cpp"
#include "CreateTraj3.cpp"
#include "CollisionCheck.cpp"
#include <fstream>
#include <cmath>

namespace fub_motion_planner{
  MotionPlanner::MotionPlanner(){
    //ROS_INFO("MotionPlanner Constructor");
  }

  MotionPlanner::~MotionPlanner(){
    //ROS_INFO("MotionPlanner Destructor");
  }

  void MotionPlanner::onInit(){
      NODELET_INFO("MotionPlanner - %s", __FUNCTION__);
      m_vehicle_state.setup(getNodeHandle());
      m_vehicle_path.setup(getNodeHandle());
      //TODO change execution frequency to a bigger value and also parameter of a config file
      //double execution_frequency = 0.02;
      ros::Duration timerPeriod = ros::Duration(1);
      mp_final_traj = getNodeHandle().advertise<fub_trajectory_msgs::Trajectory>("/model_car/trajectory", 1);
      m_mp_traj = getNodeHandle().advertise<nav_msgs::Path>("/motionplanner/traj", 1);
      mp_traj1 = getNodeHandle().advertise<nav_msgs::Path>("/motionplanner/traj_1", 1);
      mp_traj2 = getNodeHandle().advertise<nav_msgs::Path>("/motionplanner/traj_2", 1);
      mp_traj3 = getNodeHandle().advertise<nav_msgs::Path>("/motionplanner/traj_3", 1);
      mp_traj4 = getNodeHandle().advertise<nav_msgs::Path>("/motionplanner/traj_4", 1);
      m_timer = getNodeHandle().createTimer(timerPeriod, &MotionPlanner::callbackTimer, this);
      //Initialize obstacle publishers
      obst_path_1 = getNodeHandle().advertise<nav_msgs::Path>("/obstacle_path1", 10);
      obst_path_2 = getNodeHandle().advertise<nav_msgs::Path>("/obstacle_path2", 10);
      obst_path_3 = getNodeHandle().advertise<nav_msgs::Path>("/obstacle_path3", 10);
      m_subscribe_click_point = getNodeHandle().subscribe("/clicked_point", 1, &MotionPlanner::ClickPointCallback, this, ros::TransportHints().tcpNoDelay());
      sub_path_complete_indicate = getNodeHandle().advertise<std_msgs::Int16>("/completed_sub_path", 10);
  }
  /*
    Every Time click point is clicked, change the target lane selection.
  */
  void MotionPlanner::ClickPointCallback(const geometry_msgs::PointStamped & msg){
    gTargetd *= -1;
  }



  void MotionPlanner::calc_cost(target_state &tgt, double vel_current, double d_tgt,double prev_d_tgt){
  	double vel_achvd = vel_current + tgt.a_tgt*kLookAheadTime;
  	if(tgt.a_tgt >=0)
  		vel_achvd = (vel_achvd>tgt.v_tgt)?tgt.v_tgt:vel_achvd;
  	else
  		vel_achvd = (vel_achvd<tgt.v_tgt)?tgt.v_tgt:vel_achvd;
  	//TODO Add S term
  	tgt.cost += fabs(vel_achvd- tgt.v_tgt) + fabs(tgt.a_tgt) + \
  							(fabs(d_tgt -tgt.d_eval)*8)/10 + (fabs(prev_d_tgt -tgt.d_eval)*2)/10; //80% weightage to maintaining target value , 20% weightage to change wrt old path
  }
  tf::Point MotionPlanner::convert_to_map_coordinate(tf::Point odom_coordi){
    //Odom frame to map frame conversion for trajectory
    geometry_msgs::PointStamped pt_Stamped_in,pt_stamped_out;
    pt_Stamped_in.header.seq =1;
    pt_Stamped_in.header.stamp = ros::Time::now();
    pt_Stamped_in.header.frame_id= "/odom";
    pt_Stamped_in.point.x = odom_coordi[0];//current_state.m_vehicle_position[0];
    pt_Stamped_in.point.y = odom_coordi[1];//current_state.m_vehicle_position[1];
    pt_Stamped_in.point.z = 0;
    try{
      m_tf_listener.listener.transformPoint("/map", pt_Stamped_in, pt_stamped_out);
    }
    catch (tf::TransformException &ex) {
      ROS_ERROR("%s",ex.what());
    }
    return tf::Point {pt_stamped_out.point.x,pt_stamped_out.point.y,0};
    //current values in Map frame
    //tf::Point cp ;
    //cp[0] =  pt_stamped_out.point.x;
    //cp[1] =  pt_stamped_out.point.y;
  }

  void MotionPlanner::convert_path_to_fub_traj(nav_msgs::Path p, double initial_yaw=0){

    fub_trajectory_msgs::Trajectory traj;
    ros::Time t_n = ros::Time::now();
    traj.header.seq = gPubSeqNum++;
    traj.header.stamp = t_n;
    traj.header.frame_id = "/odom";
    traj.child_frame_id = "/base_link";
    fub_trajectory_msgs::TrajectoryPoint tp;
    geometry_msgs::PointStamped pt_in,pt_out;
    double t_sample = kLookAheadTime/(p.poses.size()-1);
    for(size_t i=0;i<p.poses.size();i++){
      //transform each pose x,y into odom frame
      pt_in.header.seq = 1;
      pt_in.header.frame_id = "/map";
      pt_in.header.stamp = t_n;
      pt_in.point.x = p.poses[i].pose.position.x;
      pt_in.point.y = p.poses[i].pose.position.y;
      pt_in.point.z =0;
      try{
        m_tf_listener.listener.transformPoint("/odom",pt_in,pt_out);
      }
      catch (tf::TransformException &ex) {
        ROS_ERROR("%s",ex.what());
      }
      //Fill x,y in trajectory point
      tp.pose.position.x = pt_out.point.x;
      tp.pose.position.y = pt_out.point.y;
      tp.pose.position.z = 0;
      double l_yaw;
      //Initial fill vehicle yaw
      if(i == 0){
        //TODO - add current vehicle yaw
        l_yaw = initial_yaw;
        //l_yaw = atan2((p.poses[i+1].pose.position.y - p.poses[i].pose.position.y),(p.poses[i+1].pose.position.x-p.poses[i].pose.position.x));
      }
      else if(i==p.poses.size()-1){ //Last Point - fill with road orientation
        FrenetCoordinate fp =  m_vehicle_path.getFenet(tf::Point{pt_in.point.x,pt_in.point.y,0},0);
        l_yaw = fp.th;//Here road angle is returned
      }
      else{ // slope of sample points is the orientation
        l_yaw = atan2((p.poses[i+1].pose.position.y - p.poses[i].pose.position.y),(p.poses[i+1].pose.position.x-p.poses[i].pose.position.x));
      }
      //calculate the angle of the car at each pose
      tf::Quaternion qat =  tf::createQuaternionFromYaw(l_yaw*180/M_PI);
      tp.pose.orientation.x = qat[0];
      tp.pose.orientation.y = qat[1];
      tp.pose.orientation.z = qat[2];
      tp.pose.orientation.w = qat[3];

      //fill velocity
      tp.velocity.linear.x = p.poses[i].pose.position.z;
      //fill acceleration TODO check if its needed
      tp.acceleration.linear.x = 0;
      tp.time_from_start =ros::Duration(t_sample*i);
      traj.trajectory.push_back(tp);
    }
    mp_final_traj.publish(traj);
  }

  void MotionPlanner::callbackTimer(const ros::TimerEvent &){
      // create a copy of the vehicle state - we do NOT want these values to
      // change while we are working with them
      // TODO: ensure that data does not change during copying
      VehicleState current_vehicle_state = m_vehicle_state;
      //Vehicle Path
      if (m_vehicle_path.route_path_exists == true) {

        /*TODO REMOVE DEBUG - sync with controller*/
        /*
        ROS_INFO("Init processing : x,y %.3f,%.3f   vel: %.3f  yaw:%.3f odom_time %f",current_vehicle_state.m_vehicle_position[0],\
                  current_vehicle_state.m_vehicle_position[1], current_vehicle_state.m_current_speed_front_axle_center,current_vehicle_state.getVehicleYaw(), current_vehicle_state.m_last_odom_time_stamp_received.toSec());
        */
        ros::Time t = ros::Time::now();
        clock_t tStart = clock();
        std::vector<target_state> final_states;
        /* TODO - Add the prediction matrix here after adjusting the weights. Code in test_code.cpp
        */
        //Amax for profiles TODO : Update the Amax based on current velocity
        std::vector<double> d_ranges = {-0.25,-0.17,-0.1,0,0.1,0.17,0.25};
        std::vector<double> acc_prof = {0.2,0.1,0,-0.1,-0.2,-0.4,-0.6,-0.8};
        //TODO min_max Update this values from map
        double v_max = 0.7;
        double v_min = 0; // stand still, no negative speeds
        double d_target = gTargetd;//Use the same target d for the complete loop
        int polynomial_order = 4;
        double vel_current = current_vehicle_state.m_current_speed_front_axle_center;
        double s_target = m_vehicle_path.frenet_path.back().s;
        tf::Point current_pos_map = convert_to_map_coordinate(current_vehicle_state.m_vehicle_position);
        FrenetCoordinate curr_frenet_coordi =  m_vehicle_path.getFenet(current_pos_map,current_vehicle_state.getVehicleYaw());
        //V_ Target indicated by behavioral layer
        size_t idx = ((int)(curr_frenet_coordi.s*10));
        idx = idx>m_vehicle_path.speed_limit.size()-1?m_vehicle_path.speed_limit.size()-1:idx;
        double vel_target = std::min(v_max,m_vehicle_path.speed_limit[idx]);
        vel_target = vel_target<v_min?v_min:vel_target;
        //Initialize index for target states
        index =1;
        //destination reached - send a response back to route planner to next new route
        if(curr_frenet_coordi.s + kThresholdDist > s_target ){
          if(vel_current<=0.03){
            std_msgs::Int16 var;
            var.data = 1;
            sub_path_complete_indicate.publish(var);
            m_vehicle_path.route_path_exists = false;
            return; //publish that path has been completed and return
          }
          else{
              vel_target =0; //Publish trajectories that stop vehicle safely
          }
        }

        if(vel_current<=vel_target){
      		//std::cout << "acceleration" << '\n';
      		for(int j=0; j<=2;j++){
      			for(auto d_eval : d_ranges){
              //(D,S,V,A,COST)
      				target_state tgt(s_target,d_eval,vel_target,acc_prof[j], 0,index++);
      				calc_cost(tgt, vel_current, d_target, prev_d_target);
      				std::cout.width(5);
      				final_states.push_back(tgt);
      				//std::cout << tgt.cost<< "   ";
      			}
      			//std::cout <<'\n';
      		}
      	}
      	else {
      		//std::cout << "Deceleration" << '\n';
      		for(int j=3; j<=5;j++){
      			for(auto d_eval : d_ranges){
              //(D,S,V,A,COST)
      				target_state tgt(s_target,d_eval,vel_target,acc_prof[j], 0,index++);
      				calc_cost(tgt, vel_current, d_target, prev_d_target);
      				std::cout.width(5);
      				final_states.push_back(tgt);
      				//std::cout << tgt.cost<< "   ";
      			}
      			//std::cout <<'\n';
      		}
      	}
      	vel_target =0;
        //std::cout<<"Stopping profiles" <<'\n'; - try with various d
      	for(int j=3; j<=5;j++){
      		for(auto d_eval : d_ranges){
            //(D,S,V,A,COST) extra cost for going to zero
      			target_state tgt(s_target,d_eval,vel_target,acc_prof[j], 2,index++);
      			calc_cost(tgt, vel_current, d_target, prev_d_target);
      			std::cout.width(5);
      			final_states.push_back(tgt);
      			//std::cout << tgt.cost<< "   ";
      		}
      		//std::cout <<'\n';
      	}
        //High decceleration profiles
        for(int j=5; j<=7;j++){
            //(D,S,V,A,COST) extra cost for going to zero with high braking +3 cost
      			target_state tgt(s_target,curr_frenet_coordi.d,vel_target,acc_prof[j], 2.3,index++);
      			calc_cost(tgt, vel_current, d_target, prev_d_target);
      			std::cout.width(5);
      			final_states.push_back(tgt);
      			//std::cout << tgt.cost<<'\n';
      	}

        sort( final_states.begin(),final_states.end(), [ ](const target_state& ts1, const target_state& ts2){
      				return ts1.cost < ts2.cost;});
      	//std::cout << "id "<<final_states.front().id<<" cost "<<final_states.front().cost << '\n';
      	while(final_states.front().evaluated != true){
      		//TODO change to insertion sort - this vector is almost sorted
      		//create_traj(final_states.front());
          double cost_val = create_traj_const_acc_xy_spline_3(current_vehicle_state,m_prev_vehicle_state,mp_traj1,polynomial_order, final_states.front(),current_pos_map,curr_frenet_coordi);
          //double cost_val = create_traj_const_acc_xy_polyeval_2(current_vehicle_state,m_prev_vehicle_state,mp_traj1,v_max,v_min,polynomial_order, final_states.front());
          //std::cout <<" ID: "<<final_states.front().id <<" cost :  " << final_states.front().cost<< "  "<< final_states.front().evaluated<< '\n';
          ROS_INFO("Traj Eval ID: %d, cost %.3f cur v,s,d %.3f,%.3f,%.3f , tgt a,v,s,d %.3f,%.3f,%.3f,%.3f !!",final_states.front().id,final_states.front().cost,vel_current,curr_frenet_coordi.s, \
          curr_frenet_coordi.d,final_states.front().a_tgt,final_states.front().v_tgt,final_states.front().s_tgt,final_states.front().d_eval );
      		sort( final_states.begin(),final_states.end(), [ ](const target_state& ts1, const target_state& ts2){
         				return ts1.cost < ts2.cost;});
      	}
        nav_msgs::Path p1;
        if (final_states.front().cost<20) {
          p1 = final_states.front().path;
          ROS_INFO("Final Published ID: %d, cost %.3f cur v,s,d %.3f,%.3f,%.3f , tgt a,v,s,d %.3f,%.3f,%.3f,%.3f !!",final_states.front().id,final_states.front().cost,vel_current,curr_frenet_coordi.s, \
          curr_frenet_coordi.d,final_states.front().a_tgt,final_states.front().v_tgt,final_states.front().s_tgt,final_states.front().d_eval );
        }
        else{
          target_state emergency_tgt(s_target,curr_frenet_coordi.d,0,acc_prof[7], 0,0);
          double cost_val = create_traj_const_acc_xy_spline_3(current_vehicle_state,m_prev_vehicle_state,mp_traj1,polynomial_order, emergency_tgt ,current_pos_map,curr_frenet_coordi);
          p1 = emergency_tgt.path;
          m_vehicle_path.route_path_exists = false;
          ROS_ERROR("No Path found - Publishing stopping path :: update to choose the profile with max deceleration - recheck this");
        }
        mp_traj2.publish(p1);
        convert_path_to_fub_traj(p1,current_vehicle_state.getVehicleYaw());
        prev_d_target = final_states.front().d_eval;
        //ROS_INFO("Time taken: %f", (double)(clock() - tStart)/CLOCKS_PER_SEC);

      }//if path exists
      else{
        ROS_INFO("waiting for route path");
      }
      //Store the current state to previous planning state
      m_prev_vehicle_state = current_vehicle_state;
  }

} // namespace sample_nodelet_ns

PLUGINLIB_EXPORT_CLASS(fub_motion_planner::MotionPlanner, nodelet::Nodelet)
