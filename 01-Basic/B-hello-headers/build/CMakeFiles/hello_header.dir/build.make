# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/build

# Include any dependencies generated for this target.
include CMakeFiles/hello_header.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hello_header.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hello_header.dir/flags.make

CMakeFiles/hello_header.dir/src/Hello.cpp.o: CMakeFiles/hello_header.dir/flags.make
CMakeFiles/hello_header.dir/src/Hello.cpp.o: ../src/Hello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hello_header.dir/src/Hello.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hello_header.dir/src/Hello.cpp.o -c /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/src/Hello.cpp

CMakeFiles/hello_header.dir/src/Hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello_header.dir/src/Hello.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/src/Hello.cpp > CMakeFiles/hello_header.dir/src/Hello.cpp.i

CMakeFiles/hello_header.dir/src/Hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello_header.dir/src/Hello.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/src/Hello.cpp -o CMakeFiles/hello_header.dir/src/Hello.cpp.s

CMakeFiles/hello_header.dir/src/Hello.cpp.o.requires:

.PHONY : CMakeFiles/hello_header.dir/src/Hello.cpp.o.requires

CMakeFiles/hello_header.dir/src/Hello.cpp.o.provides: CMakeFiles/hello_header.dir/src/Hello.cpp.o.requires
	$(MAKE) -f CMakeFiles/hello_header.dir/build.make CMakeFiles/hello_header.dir/src/Hello.cpp.o.provides.build
.PHONY : CMakeFiles/hello_header.dir/src/Hello.cpp.o.provides

CMakeFiles/hello_header.dir/src/Hello.cpp.o.provides.build: CMakeFiles/hello_header.dir/src/Hello.cpp.o


CMakeFiles/hello_header.dir/src/main.cpp.o: CMakeFiles/hello_header.dir/flags.make
CMakeFiles/hello_header.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/hello_header.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hello_header.dir/src/main.cpp.o -c /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/src/main.cpp

CMakeFiles/hello_header.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello_header.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/src/main.cpp > CMakeFiles/hello_header.dir/src/main.cpp.i

CMakeFiles/hello_header.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello_header.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/src/main.cpp -o CMakeFiles/hello_header.dir/src/main.cpp.s

CMakeFiles/hello_header.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/hello_header.dir/src/main.cpp.o.requires

CMakeFiles/hello_header.dir/src/main.cpp.o.provides: CMakeFiles/hello_header.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/hello_header.dir/build.make CMakeFiles/hello_header.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/hello_header.dir/src/main.cpp.o.provides

CMakeFiles/hello_header.dir/src/main.cpp.o.provides.build: CMakeFiles/hello_header.dir/src/main.cpp.o


# Object files for target hello_header
hello_header_OBJECTS = \
"CMakeFiles/hello_header.dir/src/Hello.cpp.o" \
"CMakeFiles/hello_header.dir/src/main.cpp.o"

# External object files for target hello_header
hello_header_EXTERNAL_OBJECTS =

hello_header: CMakeFiles/hello_header.dir/src/Hello.cpp.o
hello_header: CMakeFiles/hello_header.dir/src/main.cpp.o
hello_header: CMakeFiles/hello_header.dir/build.make
hello_header: CMakeFiles/hello_header.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable hello_header"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello_header.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hello_header.dir/build: hello_header

.PHONY : CMakeFiles/hello_header.dir/build

CMakeFiles/hello_header.dir/requires: CMakeFiles/hello_header.dir/src/Hello.cpp.o.requires
CMakeFiles/hello_header.dir/requires: CMakeFiles/hello_header.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/hello_header.dir/requires

CMakeFiles/hello_header.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hello_header.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hello_header.dir/clean

CMakeFiles/hello_header.dir/depend:
	cd /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/build /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/build /home/mataojie1/myfile/MakeFile/01-Basic/B-hello-headers/build/CMakeFiles/hello_header.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hello_header.dir/depend

