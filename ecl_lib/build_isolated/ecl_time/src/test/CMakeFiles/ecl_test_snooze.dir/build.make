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
CMAKE_SOURCE_DIR = /home/korivi/model_car/ecl_lib/src/ecl_time

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/korivi/model_car/ecl_lib/build_isolated/ecl_time

# Include any dependencies generated for this target.
include src/test/CMakeFiles/ecl_test_snooze.dir/depend.make

# Include the progress variables for this target.
include src/test/CMakeFiles/ecl_test_snooze.dir/progress.make

# Include the compile flags for this target's objects.
include src/test/CMakeFiles/ecl_test_snooze.dir/flags.make

src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o: src/test/CMakeFiles/ecl_test_snooze.dir/flags.make
src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o: /home/korivi/model_car/ecl_lib/src/ecl_time/src/test/snooze.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/korivi/model_car/ecl_lib/build_isolated/ecl_time/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o"
	cd /home/korivi/model_car/ecl_lib/build_isolated/ecl_time/src/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o -c /home/korivi/model_car/ecl_lib/src/ecl_time/src/test/snooze.cpp

src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ecl_test_snooze.dir/snooze.cpp.i"
	cd /home/korivi/model_car/ecl_lib/build_isolated/ecl_time/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/korivi/model_car/ecl_lib/src/ecl_time/src/test/snooze.cpp > CMakeFiles/ecl_test_snooze.dir/snooze.cpp.i

src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ecl_test_snooze.dir/snooze.cpp.s"
	cd /home/korivi/model_car/ecl_lib/build_isolated/ecl_time/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/korivi/model_car/ecl_lib/src/ecl_time/src/test/snooze.cpp -o CMakeFiles/ecl_test_snooze.dir/snooze.cpp.s

src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o.requires:

.PHONY : src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o.requires

src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o.provides: src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o.requires
	$(MAKE) -f src/test/CMakeFiles/ecl_test_snooze.dir/build.make src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o.provides.build
.PHONY : src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o.provides

src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o.provides.build: src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o


# Object files for target ecl_test_snooze
ecl_test_snooze_OBJECTS = \
"CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o"

# External object files for target ecl_test_snooze
ecl_test_snooze_EXTERNAL_OBJECTS =

/home/korivi/model_car/ecl_lib/devel_isolated/ecl_time/lib/ecl_time/ecl_test_snooze: src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_time/lib/ecl_time/ecl_test_snooze: src/test/CMakeFiles/ecl_test_snooze.dir/build.make
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_time/lib/ecl_time/ecl_test_snooze: gtest/libgtest.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_time/lib/ecl_time/ecl_test_snooze: /home/korivi/model_car/ecl_lib/devel_isolated/ecl_time/lib/libecl_time.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_time/lib/ecl_time/ecl_test_snooze: /home/korivi/model_car/ecl_lib/install_isolated/lib/libecl_exceptions.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_time/lib/ecl_time/ecl_test_snooze: /home/korivi/model_car/ecl_lib/install_isolated/lib/libecl_errors.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_time/lib/ecl_time/ecl_test_snooze: /home/korivi/model_car/ecl_lib/install_isolated/lib/libecl_time_lite.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_time/lib/ecl_time/ecl_test_snooze: /usr/lib/x86_64-linux-gnu/librt.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_time/lib/ecl_time/ecl_test_snooze: src/test/CMakeFiles/ecl_test_snooze.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/korivi/model_car/ecl_lib/build_isolated/ecl_time/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/korivi/model_car/ecl_lib/devel_isolated/ecl_time/lib/ecl_time/ecl_test_snooze"
	cd /home/korivi/model_car/ecl_lib/build_isolated/ecl_time/src/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ecl_test_snooze.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/test/CMakeFiles/ecl_test_snooze.dir/build: /home/korivi/model_car/ecl_lib/devel_isolated/ecl_time/lib/ecl_time/ecl_test_snooze

.PHONY : src/test/CMakeFiles/ecl_test_snooze.dir/build

src/test/CMakeFiles/ecl_test_snooze.dir/requires: src/test/CMakeFiles/ecl_test_snooze.dir/snooze.cpp.o.requires

.PHONY : src/test/CMakeFiles/ecl_test_snooze.dir/requires

src/test/CMakeFiles/ecl_test_snooze.dir/clean:
	cd /home/korivi/model_car/ecl_lib/build_isolated/ecl_time/src/test && $(CMAKE_COMMAND) -P CMakeFiles/ecl_test_snooze.dir/cmake_clean.cmake
.PHONY : src/test/CMakeFiles/ecl_test_snooze.dir/clean

src/test/CMakeFiles/ecl_test_snooze.dir/depend:
	cd /home/korivi/model_car/ecl_lib/build_isolated/ecl_time && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/korivi/model_car/ecl_lib/src/ecl_time /home/korivi/model_car/ecl_lib/src/ecl_time/src/test /home/korivi/model_car/ecl_lib/build_isolated/ecl_time /home/korivi/model_car/ecl_lib/build_isolated/ecl_time/src/test /home/korivi/model_car/ecl_lib/build_isolated/ecl_time/src/test/CMakeFiles/ecl_test_snooze.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/test/CMakeFiles/ecl_test_snooze.dir/depend

