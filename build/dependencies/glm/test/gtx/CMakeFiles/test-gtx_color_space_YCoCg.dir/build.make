# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/k.kucharski/Desktop/OpenGLSandbox

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/k.kucharski/Desktop/OpenGLSandbox/build

# Include any dependencies generated for this target.
include dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/depend.make

# Include the progress variables for this target.
include dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/flags.make

dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/gtx_color_space_YCoCg.cpp.o: dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/flags.make
dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/gtx_color_space_YCoCg.cpp.o: ../dependencies/glm/test/gtx/gtx_color_space_YCoCg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/k.kucharski/Desktop/OpenGLSandbox/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/gtx_color_space_YCoCg.cpp.o"
	cd /home/k.kucharski/Desktop/OpenGLSandbox/build/dependencies/glm/test/gtx && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-gtx_color_space_YCoCg.dir/gtx_color_space_YCoCg.cpp.o -c /home/k.kucharski/Desktop/OpenGLSandbox/dependencies/glm/test/gtx/gtx_color_space_YCoCg.cpp

dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/gtx_color_space_YCoCg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-gtx_color_space_YCoCg.dir/gtx_color_space_YCoCg.cpp.i"
	cd /home/k.kucharski/Desktop/OpenGLSandbox/build/dependencies/glm/test/gtx && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/k.kucharski/Desktop/OpenGLSandbox/dependencies/glm/test/gtx/gtx_color_space_YCoCg.cpp > CMakeFiles/test-gtx_color_space_YCoCg.dir/gtx_color_space_YCoCg.cpp.i

dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/gtx_color_space_YCoCg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-gtx_color_space_YCoCg.dir/gtx_color_space_YCoCg.cpp.s"
	cd /home/k.kucharski/Desktop/OpenGLSandbox/build/dependencies/glm/test/gtx && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/k.kucharski/Desktop/OpenGLSandbox/dependencies/glm/test/gtx/gtx_color_space_YCoCg.cpp -o CMakeFiles/test-gtx_color_space_YCoCg.dir/gtx_color_space_YCoCg.cpp.s

# Object files for target test-gtx_color_space_YCoCg
test__gtx_color_space_YCoCg_OBJECTS = \
"CMakeFiles/test-gtx_color_space_YCoCg.dir/gtx_color_space_YCoCg.cpp.o"

# External object files for target test-gtx_color_space_YCoCg
test__gtx_color_space_YCoCg_EXTERNAL_OBJECTS =

dependencies/glm/test/gtx/test-gtx_color_space_YCoCg: dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/gtx_color_space_YCoCg.cpp.o
dependencies/glm/test/gtx/test-gtx_color_space_YCoCg: dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/build.make
dependencies/glm/test/gtx/test-gtx_color_space_YCoCg: dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/k.kucharski/Desktop/OpenGLSandbox/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-gtx_color_space_YCoCg"
	cd /home/k.kucharski/Desktop/OpenGLSandbox/build/dependencies/glm/test/gtx && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-gtx_color_space_YCoCg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/build: dependencies/glm/test/gtx/test-gtx_color_space_YCoCg

.PHONY : dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/build

dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/clean:
	cd /home/k.kucharski/Desktop/OpenGLSandbox/build/dependencies/glm/test/gtx && $(CMAKE_COMMAND) -P CMakeFiles/test-gtx_color_space_YCoCg.dir/cmake_clean.cmake
.PHONY : dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/clean

dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/depend:
	cd /home/k.kucharski/Desktop/OpenGLSandbox/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/k.kucharski/Desktop/OpenGLSandbox /home/k.kucharski/Desktop/OpenGLSandbox/dependencies/glm/test/gtx /home/k.kucharski/Desktop/OpenGLSandbox/build /home/k.kucharski/Desktop/OpenGLSandbox/build/dependencies/glm/test/gtx /home/k.kucharski/Desktop/OpenGLSandbox/build/dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dependencies/glm/test/gtx/CMakeFiles/test-gtx_color_space_YCoCg.dir/depend

