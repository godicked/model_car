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
include ecl_utilities/src/test/CMakeFiles/test_references.dir/depend.make

# Include the progress variables for this target.
include ecl_utilities/src/test/CMakeFiles/test_references.dir/progress.make

# Include the compile flags for this target's objects.
include ecl_utilities/src/test/CMakeFiles/test_references.dir/flags.make

ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o: ecl_utilities/src/test/CMakeFiles/test_references.dir/flags.make
ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o: /home/korivi/model_car/ecl_lib/src/ecl_utilities/src/test/references.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/korivi/model_car/ecl_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o"
	cd /home/korivi/model_car/ecl_lib/build/ecl_utilities/src/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_references.dir/references.cpp.o -c /home/korivi/model_car/ecl_lib/src/ecl_utilities/src/test/references.cpp

ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_references.dir/references.cpp.i"
	cd /home/korivi/model_car/ecl_lib/build/ecl_utilities/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/korivi/model_car/ecl_lib/src/ecl_utilities/src/test/references.cpp > CMakeFiles/test_references.dir/references.cpp.i

ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_references.dir/references.cpp.s"
	cd /home/korivi/model_car/ecl_lib/build/ecl_utilities/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/korivi/model_car/ecl_lib/src/ecl_utilities/src/test/references.cpp -o CMakeFiles/test_references.dir/references.cpp.s

ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o.requires:

.PHONY : ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o.requires

ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o.provides: ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o.requires
	$(MAKE) -f ecl_utilities/src/test/CMakeFiles/test_references.dir/build.make ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o.provides.build
.PHONY : ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o.provides

ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o.provides.build: ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o


# Object files for target test_references
test_references_OBJECTS = \
"CMakeFiles/test_references.dir/references.cpp.o"

# External object files for target test_references
test_references_EXTERNAL_OBJECTS =

/home/korivi/model_car/ecl_lib/devel/lib/ecl_utilities/test_references: ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o
/home/korivi/model_car/ecl_lib/devel/lib/ecl_utilities/test_references: ecl_utilities/src/test/CMakeFiles/test_references.dir/build.make
/home/korivi/model_car/ecl_lib/devel/lib/ecl_utilities/test_references: gtest/libgtest.so
/home/korivi/model_car/ecl_lib/devel/lib/ecl_utilities/test_references: ecl_utilities/src/test/CMakeFiles/test_references.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/korivi/model_car/ecl_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/korivi/model_car/ecl_lib/devel/lib/ecl_utilities/test_references"
	cd /home/korivi/model_car/ecl_lib/build/ecl_utilities/src/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_references.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ecl_utilities/src/test/CMakeFiles/test_references.dir/build: /home/korivi/model_car/ecl_lib/devel/lib/ecl_utilities/test_references

.PHONY : ecl_utilities/src/test/CMakeFiles/test_references.dir/build

ecl_utilities/src/test/CMakeFiles/test_references.dir/requires: ecl_utilities/src/test/CMakeFiles/test_references.dir/references.cpp.o.requires

.PHONY : ecl_utilities/src/test/CMakeFiles/test_references.dir/requires

ecl_utilities/src/test/CMakeFiles/test_references.dir/clean:
	cd /home/korivi/model_car/ecl_lib/build/ecl_utilities/src/test && $(CMAKE_COMMAND) -P CMakeFiles/test_references.dir/cmake_clean.cmake
.PHONY : ecl_utilities/src/test/CMakeFiles/test_references.dir/clean

ecl_utilities/src/test/CMakeFiles/test_references.dir/depend:
	cd /home/korivi/model_car/ecl_lib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/korivi/model_car/ecl_lib/src /home/korivi/model_car/ecl_lib/src/ecl_utilities/src/test /home/korivi/model_car/ecl_lib/build /home/korivi/model_car/ecl_lib/build/ecl_utilities/src/test /home/korivi/model_car/ecl_lib/build/ecl_utilities/src/test/CMakeFiles/test_references.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ecl_utilities/src/test/CMakeFiles/test_references.dir/depend

