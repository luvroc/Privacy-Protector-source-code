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
CMAKE_SOURCE_DIR = /root/drogon/build/drogon

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/drogon/build/drogon/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/websocket_client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/websocket_client.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/websocket_client.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/websocket_client.dir/flags.make

examples/CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.o: examples/CMakeFiles/websocket_client.dir/flags.make
examples/CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.o: ../examples/websocket_client/WebSocketClient.cc
examples/CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.o: examples/CMakeFiles/websocket_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/drogon/build/drogon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.o"
	cd /root/drogon/build/drogon/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.o -MF CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.o.d -o CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.o -c /root/drogon/build/drogon/examples/websocket_client/WebSocketClient.cc

examples/CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.i"
	cd /root/drogon/build/drogon/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/drogon/build/drogon/examples/websocket_client/WebSocketClient.cc > CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.i

examples/CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.s"
	cd /root/drogon/build/drogon/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/drogon/build/drogon/examples/websocket_client/WebSocketClient.cc -o CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.s

# Object files for target websocket_client
websocket_client_OBJECTS = \
"CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.o"

# External object files for target websocket_client
websocket_client_EXTERNAL_OBJECTS =

examples/websocket_client: examples/CMakeFiles/websocket_client.dir/websocket_client/WebSocketClient.cc.o
examples/websocket_client: examples/CMakeFiles/websocket_client.dir/build.make
examples/websocket_client: libdrogon.a
examples/websocket_client: trantor/libtrantor.a
examples/websocket_client: /usr/lib/x86_64-linux-gnu/libssl.so
examples/websocket_client: /usr/lib/x86_64-linux-gnu/libcrypto.so
examples/websocket_client: /usr/lib/x86_64-linux-gnu/libjsoncpp.so
examples/websocket_client: /usr/lib/x86_64-linux-gnu/libuuid.so
examples/websocket_client: /usr/lib/x86_64-linux-gnu/libpq.so
examples/websocket_client: /usr/lib/x86_64-linux-gnu/libz.so
examples/websocket_client: examples/CMakeFiles/websocket_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/drogon/build/drogon/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable websocket_client"
	cd /root/drogon/build/drogon/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/websocket_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/websocket_client.dir/build: examples/websocket_client
.PHONY : examples/CMakeFiles/websocket_client.dir/build

examples/CMakeFiles/websocket_client.dir/clean:
	cd /root/drogon/build/drogon/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/websocket_client.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/websocket_client.dir/clean

examples/CMakeFiles/websocket_client.dir/depend:
	cd /root/drogon/build/drogon/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/drogon/build/drogon /root/drogon/build/drogon/examples /root/drogon/build/drogon/build /root/drogon/build/drogon/build/examples /root/drogon/build/drogon/build/examples/CMakeFiles/websocket_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/websocket_client.dir/depend

