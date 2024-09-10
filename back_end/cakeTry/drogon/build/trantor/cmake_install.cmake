# Install script for directory: /root/drogon/build/drogon/trantor

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/root/drogon/build/drogon/build/trantor/libtrantor.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/trantor" TYPE FILE FILES "/root/drogon/build/drogon/build/trantor/exports/trantor/exports.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/trantor/net" TYPE FILE FILES
    "/root/drogon/build/drogon/trantor/trantor/net/EventLoop.h"
    "/root/drogon/build/drogon/trantor/trantor/net/EventLoopThread.h"
    "/root/drogon/build/drogon/trantor/trantor/net/EventLoopThreadPool.h"
    "/root/drogon/build/drogon/trantor/trantor/net/InetAddress.h"
    "/root/drogon/build/drogon/trantor/trantor/net/TcpClient.h"
    "/root/drogon/build/drogon/trantor/trantor/net/TcpConnection.h"
    "/root/drogon/build/drogon/trantor/trantor/net/TcpServer.h"
    "/root/drogon/build/drogon/trantor/trantor/net/AsyncStream.h"
    "/root/drogon/build/drogon/trantor/trantor/net/callbacks.h"
    "/root/drogon/build/drogon/trantor/trantor/net/Resolver.h"
    "/root/drogon/build/drogon/trantor/trantor/net/Channel.h"
    "/root/drogon/build/drogon/trantor/trantor/net/Certificate.h"
    "/root/drogon/build/drogon/trantor/trantor/net/TLSPolicy.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/trantor/utils" TYPE FILE FILES
    "/root/drogon/build/drogon/trantor/trantor/utils/AsyncFileLogger.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/ConcurrentTaskQueue.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/Date.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/Funcs.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/LockFreeQueue.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/LogStream.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/Logger.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/MsgBuffer.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/NonCopyable.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/ObjectPool.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/SerialTaskQueue.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/TaskQueue.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/TimingWheel.h"
    "/root/drogon/build/drogon/trantor/trantor/utils/Utilities.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Trantor" TYPE FILE FILES
    "/root/drogon/build/drogon/build/trantor/CMakeFiles/TrantorConfig.cmake"
    "/root/drogon/build/drogon/build/trantor/TrantorConfigVersion.cmake"
    "/root/drogon/build/drogon/trantor/cmake_modules/Findc-ares.cmake"
    "/root/drogon/build/drogon/trantor/cmake_modules/FindBotan.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Trantor/TrantorTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Trantor/TrantorTargets.cmake"
         "/root/drogon/build/drogon/build/trantor/CMakeFiles/Export/lib/cmake/Trantor/TrantorTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Trantor/TrantorTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Trantor/TrantorTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Trantor" TYPE FILE FILES "/root/drogon/build/drogon/build/trantor/CMakeFiles/Export/lib/cmake/Trantor/TrantorTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Trantor" TYPE FILE FILES "/root/drogon/build/drogon/build/trantor/CMakeFiles/Export/lib/cmake/Trantor/TrantorTargets-noconfig.cmake")
  endif()
endif()

