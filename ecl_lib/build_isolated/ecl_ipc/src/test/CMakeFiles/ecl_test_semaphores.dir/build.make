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
CMAKE_SOURCE_DIR = /home/korivi/model_car/ecl_lib/src/ecl_ipc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/korivi/model_car/ecl_lib/build_isolated/ecl_ipc

# Include any dependencies generated for this target.
include src/test/CMakeFiles/ecl_test_semaphores.dir/depend.make

# Include the progress variables for this target.
include src/test/CMakeFiles/ecl_test_semaphores.dir/progress.make

# Include the compile flags for this target's objects.
include src/test/CMakeFiles/ecl_test_semaphores.dir/flags.make

src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o: src/test/CMakeFiles/ecl_test_semaphores.dir/flags.make
src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o: /home/korivi/model_car/ecl_lib/src/ecl_ipc/src/test/semaphores.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/korivi/model_car/ecl_lib/build_isolated/ecl_ipc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o"
	cd /home/korivi/model_car/ecl_lib/build_isolated/ecl_ipc/src/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o -c /home/korivi/model_car/ecl_lib/src/ecl_ipc/src/test/semaphores.cpp

src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.i"
	cd /home/korivi/model_car/ecl_lib/build_isolated/ecl_ipc/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/korivi/model_car/ecl_lib/src/ecl_ipc/src/test/semaphores.cpp > CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.i

src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.s"
	cd /home/korivi/model_car/ecl_lib/build_isolated/ecl_ipc/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/korivi/model_car/ecl_lib/src/ecl_ipc/src/test/semaphores.cpp -o CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.s

src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o.requires:

.PHONY : src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o.requires

src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o.provides: src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o.requires
	$(MAKE) -f src/test/CMakeFiles/ecl_test_semaphores.dir/build.make src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o.provides.build
.PHONY : src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o.provides

src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o.provides.build: src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o


# Object files for target ecl_test_semaphores
ecl_test_semaphores_OBJECTS = \
"CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o"

# External object files for target ecl_test_semaphores
ecl_test_semaphores_EXTERNAL_OBJECTS =

/home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/ecl_ipc/ecl_test_semaphores: src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/ecl_ipc/ecl_test_semaphores: src/test/CMakeFiles/ecl_test_semaphores.dir/build.make
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/ecl_ipc/ecl_test_semaphores: gtest/libgtest.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/ecl_ipc/ecl_test_semaphores: /home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/libecl_ipc.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/ecl_ipc/ecl_test_semaphores: /home/korivi/model_car/ecl_lib/install_isolated/lib/libecl_time.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/ecl_ipc/ecl_test_semaphores: /home/korivi/model_car/ecl_lib/install_isolated/lib/libecl_exceptions.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/ecl_ipc/ecl_test_semaphores: /home/korivi/model_car/ecl_lib/install_isolated/lib/libecl_errors.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/ecl_ipc/ecl_test_semaphores: /home/korivi/model_car/ecl_lib/install_isolated/lib/libecl_time_lite.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/ecl_ipc/ecl_test_semaphores: /usr/lib/x86_64-linux-gnu/librt.so
/home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/ecl_ipc/ecl_test_semaphores: src/test/CMakeFiles/ecl_test_semaphores.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/korivi/model_car/ecl_lib/build_isolated/ecl_ipc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/ecl_ipc/ecl_test_semaphores"
	cd /home/korivi/model_car/ecl_lib/build_isolated/ecl_ipc/src/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ecl_test_semaphores.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/test/CMakeFiles/ecl_test_semaphores.dir/build: /home/korivi/model_car/ecl_lib/devel_isolated/ecl_ipc/lib/ecl_ipc/ecl_test_semaphores

.PHONY : src/test/CMakeFiles/ecl_test_semaphores.dir/build

src/test/CMakeFiles/ecl_test_semaphores.dir/requires: src/test/CMakeFiles/ecl_test_semaphores.dir/semaphores.cpp.o.requires

.PHONY : src/test/CMakeFiles/ecl_test_semaphores.dir/requires

src/test/CMakeFiles/ecl_test_semaphores.dir/clean:
	cd /home/korivi/model_car/ecl_lib/build_isolated/ecl_ipc/src/test && $(CMAKE_COMMAND) -P CMakeFiles/ecl_test_semaphores.dir/cmake_clean.cmake
.PHONY : src/test/CMakeFiles/ecl_test_semaphores.dir/clean

src/test/CMakeFiles/ecl_test_semaphores.dir/depend:
	cd /home/korivi/model_car/ecl_lib/build_isolated/ecl_ipc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/korivi/model_car/ecl_lib/src/ecl_ipc /home/korivi/model_car/ecl_lib/src/ecl_ipc/src/test /home/korivi/model_car/ecl_lib/build_isolated/ecl_ipc /home/korivi/model_car/ecl_lib/build_isolated/ecl_ipc/src/test /home/korivi/model_car/ecl_lib/build_isolated/ecl_ipc/src/test/CMakeFiles/ecl_test_semaphores.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/test/CMakeFiles/ecl_test_semaphores.dir/depend

