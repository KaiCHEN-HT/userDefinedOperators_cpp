# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /home/cmake-3.16.0-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /home/cmake-3.16.0-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile/build_linux

# Include any dependencies generated for this target.
include CMakeFiles/myfunctions.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/myfunctions.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/myfunctions.dir/flags.make

CMakeFiles/myfunctions.dir/myfunctions_linux.cpp.o: CMakeFiles/myfunctions.dir/flags.make
CMakeFiles/myfunctions.dir/myfunctions_linux.cpp.o: ../myfunctions_linux.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/myfunctions.dir/myfunctions_linux.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myfunctions.dir/myfunctions_linux.cpp.o -c /home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile/myfunctions_linux.cpp

CMakeFiles/myfunctions.dir/myfunctions_linux.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myfunctions.dir/myfunctions_linux.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile/myfunctions_linux.cpp > CMakeFiles/myfunctions.dir/myfunctions_linux.cpp.i

CMakeFiles/myfunctions.dir/myfunctions_linux.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myfunctions.dir/myfunctions_linux.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile/myfunctions_linux.cpp -o CMakeFiles/myfunctions.dir/myfunctions_linux.cpp.s

# Object files for target myfunctions
myfunctions_OBJECTS = \
"CMakeFiles/myfunctions.dir/myfunctions_linux.cpp.o"

# External object files for target myfunctions
myfunctions_EXTERNAL_OBJECTS =

libmyfunctions.so: CMakeFiles/myfunctions.dir/myfunctions_linux.cpp.o
libmyfunctions.so: CMakeFiles/myfunctions.dir/build.make
libmyfunctions.so: CMakeFiles/myfunctions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libmyfunctions.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myfunctions.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/myfunctions.dir/build: libmyfunctions.so

.PHONY : CMakeFiles/myfunctions.dir/build

CMakeFiles/myfunctions.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/myfunctions.dir/cmake_clean.cmake
.PHONY : CMakeFiles/myfunctions.dir/clean

CMakeFiles/myfunctions.dir/depend:
	cd /home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile/build_linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile /home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile /home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile/build_linux /home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile/build_linux /home/chenkai26/userDefinedOperators_cpp/myfunctions_declspec_cmakeCompile/build_linux/CMakeFiles/myfunctions.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/myfunctions.dir/depend

