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
include drogon/examples/CMakeFiles/redis_chat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include drogon/examples/CMakeFiles/redis_chat.dir/compiler_depend.make

# Include the progress variables for this target.
include drogon/examples/CMakeFiles/redis_chat.dir/progress.make

# Include the compile flags for this target's objects.
include drogon/examples/CMakeFiles/redis_chat.dir/flags.make

drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/main.cc.o: drogon/examples/CMakeFiles/redis_chat.dir/flags.make
drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/main.cc.o: ../drogon/examples/redis_chat/main.cc
drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/main.cc.o: drogon/examples/CMakeFiles/redis_chat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/yacl/makeDrogon/cakeTry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/main.cc.o"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/main.cc.o -MF CMakeFiles/redis_chat.dir/redis_chat/main.cc.o.d -o CMakeFiles/redis_chat.dir/redis_chat/main.cc.o -c /root/yacl/makeDrogon/cakeTry/drogon/examples/redis_chat/main.cc

drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/redis_chat.dir/redis_chat/main.cc.i"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/yacl/makeDrogon/cakeTry/drogon/examples/redis_chat/main.cc > CMakeFiles/redis_chat.dir/redis_chat/main.cc.i

drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/redis_chat.dir/redis_chat/main.cc.s"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/yacl/makeDrogon/cakeTry/drogon/examples/redis_chat/main.cc -o CMakeFiles/redis_chat.dir/redis_chat/main.cc.s

drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.o: drogon/examples/CMakeFiles/redis_chat.dir/flags.make
drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.o: ../drogon/examples/redis_chat/controllers/Chat.cc
drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.o: drogon/examples/CMakeFiles/redis_chat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/yacl/makeDrogon/cakeTry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.o"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.o -MF CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.o.d -o CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.o -c /root/yacl/makeDrogon/cakeTry/drogon/examples/redis_chat/controllers/Chat.cc

drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.i"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/yacl/makeDrogon/cakeTry/drogon/examples/redis_chat/controllers/Chat.cc > CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.i

drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.s"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/yacl/makeDrogon/cakeTry/drogon/examples/redis_chat/controllers/Chat.cc -o CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.s

# Object files for target redis_chat
redis_chat_OBJECTS = \
"CMakeFiles/redis_chat.dir/redis_chat/main.cc.o" \
"CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.o"

# External object files for target redis_chat
redis_chat_EXTERNAL_OBJECTS =

drogon/examples/redis_chat: drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/main.cc.o
drogon/examples/redis_chat: drogon/examples/CMakeFiles/redis_chat.dir/redis_chat/controllers/Chat.cc.o
drogon/examples/redis_chat: drogon/examples/CMakeFiles/redis_chat.dir/build.make
drogon/examples/redis_chat: drogon/libdrogon.a
drogon/examples/redis_chat: drogon/trantor/libtrantor.a
drogon/examples/redis_chat: /usr/lib/x86_64-linux-gnu/libssl.so
drogon/examples/redis_chat: /usr/lib/x86_64-linux-gnu/libcrypto.so
drogon/examples/redis_chat: /usr/lib/x86_64-linux-gnu/libjsoncpp.so
drogon/examples/redis_chat: /usr/lib/x86_64-linux-gnu/libuuid.so
drogon/examples/redis_chat: /usr/lib/x86_64-linux-gnu/libpq.so
drogon/examples/redis_chat: /usr/lib/x86_64-linux-gnu/libz.so
drogon/examples/redis_chat: drogon/examples/CMakeFiles/redis_chat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/yacl/makeDrogon/cakeTry/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable redis_chat"
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/redis_chat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
drogon/examples/CMakeFiles/redis_chat.dir/build: drogon/examples/redis_chat
.PHONY : drogon/examples/CMakeFiles/redis_chat.dir/build

drogon/examples/CMakeFiles/redis_chat.dir/clean:
	cd /root/yacl/makeDrogon/cakeTry/build/drogon/examples && $(CMAKE_COMMAND) -P CMakeFiles/redis_chat.dir/cmake_clean.cmake
.PHONY : drogon/examples/CMakeFiles/redis_chat.dir/clean

drogon/examples/CMakeFiles/redis_chat.dir/depend:
	cd /root/yacl/makeDrogon/cakeTry/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/yacl/makeDrogon/cakeTry /root/yacl/makeDrogon/cakeTry/drogon/examples /root/yacl/makeDrogon/cakeTry/build /root/yacl/makeDrogon/cakeTry/build/drogon/examples /root/yacl/makeDrogon/cakeTry/build/drogon/examples/CMakeFiles/redis_chat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : drogon/examples/CMakeFiles/redis_chat.dir/depend

