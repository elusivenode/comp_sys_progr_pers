# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /home/elusivenode/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.5981.166/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/elusivenode/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.5981.166/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/elusivenode/Study/comp_sys_prog_pers

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/elusivenode/Study/comp_sys_prog_pers/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/pp_2_10.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pp_2_10.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pp_2_10.dir/flags.make

CMakeFiles/pp_2_10.dir/ch_2/pp_2_10.c.o: CMakeFiles/pp_2_10.dir/flags.make
CMakeFiles/pp_2_10.dir/ch_2/pp_2_10.c.o: ../ch_2/pp_2_10.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elusivenode/Study/comp_sys_prog_pers/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pp_2_10.dir/ch_2/pp_2_10.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pp_2_10.dir/ch_2/pp_2_10.c.o   -c /home/elusivenode/Study/comp_sys_prog_pers/ch_2/pp_2_10.c

CMakeFiles/pp_2_10.dir/ch_2/pp_2_10.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pp_2_10.dir/ch_2/pp_2_10.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/elusivenode/Study/comp_sys_prog_pers/ch_2/pp_2_10.c > CMakeFiles/pp_2_10.dir/ch_2/pp_2_10.c.i

CMakeFiles/pp_2_10.dir/ch_2/pp_2_10.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pp_2_10.dir/ch_2/pp_2_10.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/elusivenode/Study/comp_sys_prog_pers/ch_2/pp_2_10.c -o CMakeFiles/pp_2_10.dir/ch_2/pp_2_10.c.s

# Object files for target pp_2_10
pp_2_10_OBJECTS = \
"CMakeFiles/pp_2_10.dir/ch_2/pp_2_10.c.o"

# External object files for target pp_2_10
pp_2_10_EXTERNAL_OBJECTS =

pp_2_10: CMakeFiles/pp_2_10.dir/ch_2/pp_2_10.c.o
pp_2_10: CMakeFiles/pp_2_10.dir/build.make
pp_2_10: CMakeFiles/pp_2_10.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/elusivenode/Study/comp_sys_prog_pers/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pp_2_10"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pp_2_10.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pp_2_10.dir/build: pp_2_10

.PHONY : CMakeFiles/pp_2_10.dir/build

CMakeFiles/pp_2_10.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pp_2_10.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pp_2_10.dir/clean

CMakeFiles/pp_2_10.dir/depend:
	cd /home/elusivenode/Study/comp_sys_prog_pers/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elusivenode/Study/comp_sys_prog_pers /home/elusivenode/Study/comp_sys_prog_pers /home/elusivenode/Study/comp_sys_prog_pers/cmake-build-debug /home/elusivenode/Study/comp_sys_prog_pers/cmake-build-debug /home/elusivenode/Study/comp_sys_prog_pers/cmake-build-debug/CMakeFiles/pp_2_10.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pp_2_10.dir/depend

