/*
 * sample_nodelet_class.h
 *
 *  Created on: 2016/09/18
 *      Author: cryborg21
 */
#ifndef MOTION_PLANNER_H_
#define MOTION_PLANNER_H_
#include <nodelet/nodelet.h>

namespace fub_motion_planner{
  class motion_planner : public nodelet::Nodelet{
    public:
        motion_planner();
        ~motion_planner();
        virtual void onInit();
  };
} // namespace sample_nodelet_ns

#endif /* SAMPLE_NODELET_CLASS_SRC_SAMPLE_NODELET_CLASS_H_ */
