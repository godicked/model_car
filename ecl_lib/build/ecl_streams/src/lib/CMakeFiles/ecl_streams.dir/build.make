# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/korivi/model_car/ecl_lib/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/korivi/model_car/ecl_lib/build

# Include any dependencies generated for this target.
include ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/depend.make

# Include the progress variables for this target.
include ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/progress.make

# Include the compile flags for this target's objects.
include ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/flags.make

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o: ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/flags.make
ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o: /home/korivi/model_car/ecl_lib/src/ecl_streams/src/lib/manipulators.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/korivi/model_car/ecl_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o"
	cd /home/korivi/model_car/ecl_lib/build/ecl_streams/src/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ecl_streams.dir/manipulators.cpp.o -c /home/korivi/model_car/ecl_lib/src/ecl_streams/src/lib/manipulators.cpp

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ecl_streams.dir/manipulators.cpp.i"
	cd /home/korivi/model_car/ecl_lib/build/ecl_streams/src/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/korivi/model_car/ecl_lib/src/ecl_streams/src/lib/manipulators.cpp > CMakeFiles/ecl_streams.dir/manipulators.cpp.i

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ecl_streams.dir/manipulators.cpp.s"
	cd /home/korivi/model_car/ecl_lib/build/ecl_streams/src/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/korivi/model_car/ecl_lib/src/ecl_streams/src/lib/manipulators.cpp -o CMakeFiles/ecl_streams.dir/manipulators.cpp.s

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o.requires:

.PHONY : ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o.requires

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o.provides: ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o.requires
	$(MAKE) -f ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/build.make ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o.provides.build
.PHONY : ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o.provides

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o.provides.build: ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o


ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o: ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/flags.make
ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o: /home/korivi/model_car/ecl_lib/src/ecl_streams/src/lib/log_stream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/korivi/model_car/ecl_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o"
	cd /home/korivi/model_car/ecl_lib/build/ecl_streams/src/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ecl_streams.dir/log_stream.cpp.o -c /home/korivi/model_car/ecl_lib/src/ecl_streams/src/lib/log_stream.cpp

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ecl_streams.dir/log_stream.cpp.i"
	cd /home/korivi/model_car/ecl_lib/build/ecl_streams/src/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/korivi/model_car/ecl_lib/src/ecl_streams/src/lib/log_stream.cpp > CMakeFiles/ecl_streams.dir/log_stream.cpp.i

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ecl_streams.dir/log_stream.cpp.s"
	cd /home/korivi/model_car/ecl_lib/build/ecl_streams/src/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/korivi/model_car/ecl_lib/src/ecl_streams/src/lib/log_stream.cpp -o CMakeFiles/ecl_streams.dir/log_stream.cpp.s

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o.requires:

.PHONY : ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o.requires

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o.provides: ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o.requires
	$(MAKE) -f ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/build.make ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o.provides.build
.PHONY : ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o.provides

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o.provides.build: ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o


# Object files for target ecl_streams
ecl_streams_OBJECTS = \
"CMakeFiles/ecl_streams.dir/manipulators.cpp.o" \
"CMakeFiles/ecl_streams.dir/log_stream.cpp.o"

# External object files for target ecl_streams
ecl_streams_EXTERNAL_OBJECTS =

/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/build.make
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: /home/korivi/model_car/ecl_lib/devel/lib/libecl_devices.so
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: /home/korivi/model_car/ecl_lib/devel/lib/libecl_formatters.so
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: /home/korivi/model_car/ecl_lib/devel/lib/libecl_threads.so
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: /home/korivi/model_car/ecl_lib/devel/lib/libecl_time.so
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: /home/korivi/model_car/ecl_lib/devel/lib/libecl_time_lite.so
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: /usr/lib/x86_64-linux-gnu/librt.so
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: /home/korivi/model_car/ecl_lib/devel/lib/libecl_exceptions.so
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: /home/korivi/model_car/ecl_lib/devel/lib/libecl_errors.so
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: /home/korivi/model_car/ecl_lib/devel/lib/libecl_type_traits.so
/home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so: ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/korivi/model_car/ecl_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library /home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so"
	cd /home/korivi/model_car/ecl_lib/build/ecl_streams/src/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ecl_streams.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/build: /home/korivi/model_car/ecl_lib/devel/lib/libecl_streams.so

.PHONY : ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/build

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/requires: ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/manipulators.cpp.o.requires
ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/requires: ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/log_stream.cpp.o.requires

.PHONY : ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/requires

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/clean:
	cd /home/korivi/model_car/ecl_lib/build/ecl_streams/src/lib && $(CMAKE_COMMAND) -P CMakeFiles/ecl_streams.dir/cmake_clean.cmake
.PHONY : ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/clean

ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/depend:
	cd /home/korivi/model_car/ecl_lib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/korivi/model_car/ecl_lib/src /home/korivi/model_car/ecl_lib/src/ecl_streams/src/lib /home/korivi/model_car/ecl_lib/build /home/korivi/model_car/ecl_lib/build/ecl_streams/src/lib /home/korivi/model_car/ecl_lib/build/ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ecl_streams/src/lib/CMakeFiles/ecl_streams.dir/depend

