# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jmille15/Projects/MBQC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jmille15/Projects/MBQC/build

# Include any dependencies generated for this target.
include CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/flags.make

CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.o: CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/flags.make
CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.o: /Users/jmille15/Projects/MBQC/tests/testTwoQubitsAnglesPiOnTwo.cpp
CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.o: CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jmille15/Projects/MBQC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.o -MF CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.o.d -o CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.o -c /Users/jmille15/Projects/MBQC/tests/testTwoQubitsAnglesPiOnTwo.cpp

CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jmille15/Projects/MBQC/tests/testTwoQubitsAnglesPiOnTwo.cpp > CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.i

CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jmille15/Projects/MBQC/tests/testTwoQubitsAnglesPiOnTwo.cpp -o CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.s

# Object files for target testTwoQubitsAnglesPiOnTwo
testTwoQubitsAnglesPiOnTwo_OBJECTS = \
"CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.o"

# External object files for target testTwoQubitsAnglesPiOnTwo
testTwoQubitsAnglesPiOnTwo_EXTERNAL_OBJECTS =

testTwoQubitsAnglesPiOnTwo: CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/tests/testTwoQubitsAnglesPiOnTwo.cpp.o
testTwoQubitsAnglesPiOnTwo: CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/build.make
testTwoQubitsAnglesPiOnTwo: CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jmille15/Projects/MBQC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testTwoQubitsAnglesPiOnTwo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/build: testTwoQubitsAnglesPiOnTwo
.PHONY : CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/build

CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/clean

CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/depend:
	cd /Users/jmille15/Projects/MBQC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jmille15/Projects/MBQC /Users/jmille15/Projects/MBQC /Users/jmille15/Projects/MBQC/build /Users/jmille15/Projects/MBQC/build /Users/jmille15/Projects/MBQC/build/CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testTwoQubitsAnglesPiOnTwo.dir/depend

