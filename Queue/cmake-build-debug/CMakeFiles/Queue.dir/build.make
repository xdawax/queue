# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/dawa/Documents/Programming/clion-2017.3.4/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/dawa/Documents/Programming/clion-2017.3.4/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dawa/CLionProjects/Queue

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dawa/CLionProjects/Queue/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Queue.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Queue.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Queue.dir/flags.make

CMakeFiles/Queue.dir/main.c.o: CMakeFiles/Queue.dir/flags.make
CMakeFiles/Queue.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dawa/CLionProjects/Queue/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Queue.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Queue.dir/main.c.o   -c /home/dawa/CLionProjects/Queue/main.c

CMakeFiles/Queue.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Queue.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dawa/CLionProjects/Queue/main.c > CMakeFiles/Queue.dir/main.c.i

CMakeFiles/Queue.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Queue.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dawa/CLionProjects/Queue/main.c -o CMakeFiles/Queue.dir/main.c.s

CMakeFiles/Queue.dir/main.c.o.requires:

.PHONY : CMakeFiles/Queue.dir/main.c.o.requires

CMakeFiles/Queue.dir/main.c.o.provides: CMakeFiles/Queue.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/Queue.dir/build.make CMakeFiles/Queue.dir/main.c.o.provides.build
.PHONY : CMakeFiles/Queue.dir/main.c.o.provides

CMakeFiles/Queue.dir/main.c.o.provides.build: CMakeFiles/Queue.dir/main.c.o


CMakeFiles/Queue.dir/queue.c.o: CMakeFiles/Queue.dir/flags.make
CMakeFiles/Queue.dir/queue.c.o: queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dawa/CLionProjects/Queue/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Queue.dir/queue.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Queue.dir/queue.c.o   -c /home/dawa/CLionProjects/Queue/cmake-build-debug/queue.c

CMakeFiles/Queue.dir/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Queue.dir/queue.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dawa/CLionProjects/Queue/cmake-build-debug/queue.c > CMakeFiles/Queue.dir/queue.c.i

CMakeFiles/Queue.dir/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Queue.dir/queue.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dawa/CLionProjects/Queue/cmake-build-debug/queue.c -o CMakeFiles/Queue.dir/queue.c.s

CMakeFiles/Queue.dir/queue.c.o.requires:

.PHONY : CMakeFiles/Queue.dir/queue.c.o.requires

CMakeFiles/Queue.dir/queue.c.o.provides: CMakeFiles/Queue.dir/queue.c.o.requires
	$(MAKE) -f CMakeFiles/Queue.dir/build.make CMakeFiles/Queue.dir/queue.c.o.provides.build
.PHONY : CMakeFiles/Queue.dir/queue.c.o.provides

CMakeFiles/Queue.dir/queue.c.o.provides.build: CMakeFiles/Queue.dir/queue.c.o


CMakeFiles/Queue.dir/queue_test.c.o: CMakeFiles/Queue.dir/flags.make
CMakeFiles/Queue.dir/queue_test.c.o: queue_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dawa/CLionProjects/Queue/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Queue.dir/queue_test.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Queue.dir/queue_test.c.o   -c /home/dawa/CLionProjects/Queue/cmake-build-debug/queue_test.c

CMakeFiles/Queue.dir/queue_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Queue.dir/queue_test.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dawa/CLionProjects/Queue/cmake-build-debug/queue_test.c > CMakeFiles/Queue.dir/queue_test.c.i

CMakeFiles/Queue.dir/queue_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Queue.dir/queue_test.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dawa/CLionProjects/Queue/cmake-build-debug/queue_test.c -o CMakeFiles/Queue.dir/queue_test.c.s

CMakeFiles/Queue.dir/queue_test.c.o.requires:

.PHONY : CMakeFiles/Queue.dir/queue_test.c.o.requires

CMakeFiles/Queue.dir/queue_test.c.o.provides: CMakeFiles/Queue.dir/queue_test.c.o.requires
	$(MAKE) -f CMakeFiles/Queue.dir/build.make CMakeFiles/Queue.dir/queue_test.c.o.provides.build
.PHONY : CMakeFiles/Queue.dir/queue_test.c.o.provides

CMakeFiles/Queue.dir/queue_test.c.o.provides.build: CMakeFiles/Queue.dir/queue_test.c.o


# Object files for target Queue
Queue_OBJECTS = \
"CMakeFiles/Queue.dir/main.c.o" \
"CMakeFiles/Queue.dir/queue.c.o" \
"CMakeFiles/Queue.dir/queue_test.c.o"

# External object files for target Queue
Queue_EXTERNAL_OBJECTS =

Queue: CMakeFiles/Queue.dir/main.c.o
Queue: CMakeFiles/Queue.dir/queue.c.o
Queue: CMakeFiles/Queue.dir/queue_test.c.o
Queue: CMakeFiles/Queue.dir/build.make
Queue: CMakeFiles/Queue.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dawa/CLionProjects/Queue/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable Queue"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Queue.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Queue.dir/build: Queue

.PHONY : CMakeFiles/Queue.dir/build

CMakeFiles/Queue.dir/requires: CMakeFiles/Queue.dir/main.c.o.requires
CMakeFiles/Queue.dir/requires: CMakeFiles/Queue.dir/queue.c.o.requires
CMakeFiles/Queue.dir/requires: CMakeFiles/Queue.dir/queue_test.c.o.requires

.PHONY : CMakeFiles/Queue.dir/requires

CMakeFiles/Queue.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Queue.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Queue.dir/clean

CMakeFiles/Queue.dir/depend:
	cd /home/dawa/CLionProjects/Queue/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dawa/CLionProjects/Queue /home/dawa/CLionProjects/Queue /home/dawa/CLionProjects/Queue/cmake-build-debug /home/dawa/CLionProjects/Queue/cmake-build-debug /home/dawa/CLionProjects/Queue/cmake-build-debug/CMakeFiles/Queue.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Queue.dir/depend

