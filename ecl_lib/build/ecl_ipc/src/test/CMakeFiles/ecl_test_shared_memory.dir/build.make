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
include ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/depend.make

# Include the progress variables for this target.
include ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/progress.make

# Include the compile flags for this target's objects.
include ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/flags.make

ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o: ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/flags.make
ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o: /home/korivi/model_car/ecl_lib/src/ecl_ipc/src/test/shared_memory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/korivi/model_car/ecl_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o"
	cd /home/korivi/model_car/ecl_lib/build/ecl_ipc/src/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o -c /home/korivi/model_car/ecl_lib/src/ecl_ipc/src/test/shared_memory.cpp

ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.i"
	cd /home/korivi/model_car/ecl_lib/build/ecl_ipc/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/korivi/model_car/ecl_lib/src/ecl_ipc/src/test/shared_memory.cpp > CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.i

ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.s"
	cd /home/korivi/model_car/ecl_lib/build/ecl_ipc/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/korivi/model_car/ecl_lib/src/ecl_ipc/src/test/shared_memory.cpp -o CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.s

ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o.requires:

.PHONY : ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o.requires

ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o.provides: ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o.requires
	$(MAKE) -f ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/build.make ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o.provides.build
.PHONY : ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o.provides

ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o.provides.build: ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o


# Object files for target ecl_test_shared_memory
ecl_test_shared_memory_OBJECTS = \
"CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o"

# External object files for target ecl_test_shared_memory
ecl_test_shared_memory_EXTERNAL_OBJECTS =

/home/korivi/model_car/ecl_lib/devel/lib/ecl_ipc/ecl_test_shared_memory: ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o
/home/korivi/model_car/ecl_lib/devel/lib/ecl_ipc/ecl_test_shared_memory: ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/build.make
/home/korivi/model_car/ecl_lib/devel/lib/ecl_ipc/ecl_test_shared_memory: gtest/libgtest.so
/home/korivi/model_car/ecl_lib/devel/lib/ecl_ipc/ecl_test_shared_memory: /home/korivi/model_car/ecl_lib/devel/lib/libecl_ipc.so
/home/korivi/model_car/ecl_lib/devel/lib/ecl_ipc/ecl_test_shared_memory: /home/korivi/model_car/ecl_lib/devel/lib/libecl_time.so
/home/korivi/model_car/ecl_lib/devel/lib/ecl_ipc/ecl_test_shared_memory: /home/korivi/model_car/ecl_lib/devel/lib/libecl_exceptions.so
/home/korivi/model_car/ecl_lib/devel/lib/ecl_ipc/ecl_test_shared_memory: /home/korivi/model_car/ecl_lib/devel/lib/libecl_time_lite.so
/home/korivi/model_car/ecl_lib/devel/lib/ecl_ipc/ecl_test_shared_memory: /usr/lib/x86_64-linux-gnu/librt.so
/home/korivi/model_car/ecl_lib/devel/lib/ecl_ipc/ecl_test_shared_memory: /home/korivi/model_car/ecl_lib/devel/lib/libecl_errors.so
/home/korivi/model_car/ecl_lib/devel/lib/ecl_ipc/ecl_test_shared_memory: ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/korivi/model_car/ecl_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/korivi/model_car/ecl_lib/devel/lib/ecl_ipc/ecl_test_shared_memory"
	cd /home/korivi/model_car/ecl_lib/build/ecl_ipc/src/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ecl_test_shared_memory.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/build: /home/korivi/model_car/ecl_lib/devel/lib/ecl_ipc/ecl_test_shared_memory

.PHONY : ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/build

ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/requires: ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/shared_memory.cpp.o.requires

.PHONY : ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/requires

ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/clean:
	cd /home/korivi/model_car/ecl_lib/build/ecl_ipc/src/test && $(CMAKE_COMMAND) -P CMakeFiles/ecl_test_shared_memory.dir/cmake_clean.cmake
.PHONY : ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/clean

ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/depend:
	cd /home/korivi/model_car/ecl_lib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/korivi/model_car/ecl_lib/src /home/korivi/model_car/ecl_lib/src/ecl_ipc/src/test /home/korivi/model_car/ecl_lib/build /home/korivi/model_car/ecl_lib/build/ecl_ipc/src/test /home/korivi/model_car/ecl_lib/build/ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ecl_ipc/src/test/CMakeFiles/ecl_test_shared_memory.dir/depend

