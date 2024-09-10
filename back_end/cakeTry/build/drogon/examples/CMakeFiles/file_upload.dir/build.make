# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/yacl/makeDrogon/cakeTry

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/yacl/makeDrogon/cakeTry/build

# Include any dependencies generated for this target.
include drogon/examples/CMakeFiles/file_upload.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include drogon/examples/CMakeFiles/file_upload.dir/compiler_depend.make

# Include the progress variables for this target.
include drogon/examples/CMakeFiles/file_upload.dir/progress.make

# Include the compile flags for this target's objects.
include drogon/examples/CMakeFiles/file_upload.dir/flags.make

drogon/examples/FileUpload.h: ../drogon/examples/file_upload/FileUpload.csp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/yacl/makeDrogon/cakeTry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating FileUpload.h, FileUpload.cc"
	cd /root/yacl/makeDrogon/cakeTry/drogon/examples && /root/yacl/makeDrogon/cakeTry/build/drogon/drogon_ctl/drogon_ctl create view file_upload/FileUpload.csp -o /root/yacl/makeDrogon/cakeTry/build/drogon/examples

drogon/examples/FileUpload.cc: drogon/examples/FileUpload.h
	@$(CMAKE_COMMAND) -E touch_nocreate drogon/examples/FileUpload.cc

drogon/examples/CMakeFiles/file_upload.dir/file_upload/file_upload.cc.o: drogon/examples/CMakeFiles/file_upload.dir/flags.make
drogon/examples/CMakeFiles/file_upload.dir/file_upload/file_upload.cc.o: ../drogon/examples/file_upload/file_upload.cc
drogon/examples/CMakeFiles/file_upload.dir/file_upload/file_upload.cc.o: drogon/examples/CMakeFiles/file_upload.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/yacl/makeDrogon/cakeTry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object drogon/examples/CMakeFiles/file_upload.dir/file_upload/file_upload.cc.o"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT drogon/examples/CMakeFiles/file_upload.dir/file_upload/file_upload.cc.o -MF CMakeFiles/file_upload.dir/file_upload/file_upload.cc.o.d -o CMakeFiles/file_upload.dir/file_upload/file_upload.cc.o -c /root/yacl/makeDrogon/cakeTry/drogon/examples/file_upload/file_upload.cc

drogon/examples/CMakeFiles/file_upload.dir/file_upload/file_upload.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_upload.dir/file_upload/file_upload.cc.i"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/yacl/makeDrogon/cakeTry/drogon/examples/file_upload/file_upload.cc > CMakeFiles/file_upload.dir/file_upload/file_upload.cc.i

drogon/examples/CMakeFiles/file_upload.dir/file_upload/file_upload.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_upload.dir/file_upload/file_upload.cc.s"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/yacl/makeDrogon/cakeTry/drogon/examples/file_upload/file_upload.cc -o CMakeFiles/file_upload.dir/file_upload/file_upload.cc.s

drogon/examples/CMakeFiles/file_upload.dir/FileUpload.cc.o: drogon/examples/CMakeFiles/file_upload.dir/flags.make
drogon/examples/CMakeFiles/file_upload.dir/FileUpload.cc.o: drogon/examples/FileUpload.cc
drogon/examples/CMakeFiles/file_upload.dir/FileUpload.cc.o: drogon/examples/CMakeFiles/file_upload.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/yacl/makeDrogon/cakeTry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object drogon/examples/CMakeFiles/file_upload.dir/FileUpload.cc.o"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT drogon/examples/CMakeFiles/file_upload.dir/FileUpload.cc.o -MF CMakeFiles/file_upload.dir/FileUpload.cc.o.d -o CMakeFiles/file_upload.dir/FileUpload.cc.o -c /root/yacl/makeDrogon/cakeTry/build/drogon/examples/FileUpload.cc

drogon/examples/CMakeFiles/file_upload.dir/FileUpload.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_upload.dir/FileUpload.cc.i"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/yacl/makeDrogon/cakeTry/build/drogon/examples/FileUpload.cc > CMakeFiles/file_upload.dir/FileUpload.cc.i

drogon/examples/CMakeFiles/file_upload.dir/FileUpload.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_upload.dir/FileUpload.cc.s"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/yacl/makeDrogon/cakeTry/build/drogon/examples/FileUpload.cc -o CMakeFiles/file_upload.dir/FileUpload.cc.s

# Object files for target file_upload
file_upload_OBJECTS = \
"CMakeFiles/file_upload.dir/file_upload/file_upload.cc.o" \
"CMakeFiles/file_upload.dir/FileUpload.cc.o"

# External object files for target file_upload
file_upload_EXTERNAL_OBJECTS =

drogon/examples/file_upload: drogon/examples/CMakeFiles/file_upload.dir/file_upload/file_upload.cc.o
drogon/examples/file_upload: drogon/examples/CMakeFiles/file_upload.dir/FileUpload.cc.o
drogon/examples/file_upload: drogon/examples/CMakeFiles/file_upload.dir/build.make
drogon/examples/file_upload: drogon/libdrogon.a
drogon/examples/file_upload: drogon/trantor/libtrantor.a
drogon/examples/file_upload: /usr/lib/x86_64-linux-gnu/libssl.so
drogon/examples/file_upload: /usr/lib/x86_64-linux-gnu/libcrypto.so
drogon/examples/file_upload: /usr/lib/x86_64-linux-gnu/libjsoncpp.so
drogon/examples/file_upload: /usr/lib/x86_64-linux-gnu/libuuid.so
drogon/examples/file_upload: /usr/lib/x86_64-linux-gnu/libpq.so
drogon/examples/file_upload: /usr/lib/x86_64-linux-gnu/libz.so
drogon/examples/file_upload: drogon/examples/CMakeFiles/file_upload.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/yacl/makeDrogon/cakeTry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable file_upload"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/file_upload.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
drogon/examples/CMakeFiles/file_upload.dir/build: drogon/examples/file_upload
.PHONY : drogon/examples/CMakeFiles/file_upload.dir/build

drogon/examples/CMakeFiles/file_upload.dir/clean:
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && $(CMAKE_COMMAND) -P CMakeFiles/file_upload.dir/cmake_clean.cmake
.PHONY : drogon/examples/CMakeFiles/file_upload.dir/clean

drogon/examples/CMakeFiles/file_upload.dir/depend: drogon/examples/FileUpload.cc
drogon/examples/CMakeFiles/file_upload.dir/depend: drogon/examples/FileUpload.h
	cd /root/yacl/makeDrogon/cakeTry/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/yacl/makeDrogon/cakeTry /root/yacl/makeDrogon/cakeTry/drogon/examples /root/yacl/makeDrogon/cakeTry/build /root/yacl/makeDrogon/cakeTry/build/drogon/examples /root/yacl/makeDrogon/cakeTry/build/drogon/examples/CMakeFiles/file_upload.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : drogon/examples/CMakeFiles/file_upload.dir/depend

