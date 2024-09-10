# Install script for directory: /root/yacl/makeDrogon/cakeTry/drogon

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/root/yacl/makeDrogon/cakeTry/build/drogon/libdrogon.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/drogon" TYPE FILE FILES
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/Attribute.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/CacheMap.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/Cookie.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/DrClassMap.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/DrObject.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/DrTemplate.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/DrTemplateBase.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/HttpAppFramework.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/HttpBinder.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/HttpClient.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/HttpController.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/HttpFilter.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/HttpMiddleware.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/HttpRequest.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/HttpResponse.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/HttpSimpleController.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/HttpTypes.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/HttpViewData.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/IntranetIpFilter.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/IOThreadStorage.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/LocalHostFilter.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/MultiPart.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/NotFound.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/Session.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/UploadFile.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/WebSocketClient.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/WebSocketConnection.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/WebSocketController.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/drogon.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/version.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/drogon_callbacks.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/PubSubService.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/drogon_test.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/RateLimiter.h"
    "/root/yacl/makeDrogon/cakeTry/build/drogon/exports/drogon/exports.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/drogon/orm" TYPE FILE FILES
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/ArrayParser.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/BaseBuilder.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/Criteria.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/DbClient.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/DbListener.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/DbTypes.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/Exception.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/Field.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/FunctionTraits.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/Mapper.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/CoroMapper.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/Result.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/ResultIterator.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/Row.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/RowIterator.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/SqlBinder.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/orm_lib/inc/drogon/orm/RestfulController.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/drogon/nosql" TYPE FILE FILES
    "/root/yacl/makeDrogon/cakeTry/drogon/nosql_lib/redis/inc/drogon/nosql/RedisClient.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/nosql_lib/redis/inc/drogon/nosql/RedisResult.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/nosql_lib/redis/inc/drogon/nosql/RedisSubscriber.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/nosql_lib/redis/inc/drogon/nosql/RedisException.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/drogon/utils" TYPE FILE FILES
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/coroutine.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/FunctionTraits.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/HttpConstraint.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/OStringStream.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/Utilities.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/monitoring.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/drogon/utils/monitoring" TYPE FILE FILES
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/monitoring/Counter.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/monitoring/Metric.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/monitoring/Registry.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/monitoring/Collector.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/monitoring/Sample.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/monitoring/Gauge.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/utils/monitoring/Histogram.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/drogon/plugins" TYPE FILE FILES
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/plugins/Plugin.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/plugins/Redirector.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/plugins/SecureSSLRedirector.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/plugins/AccessLogger.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/plugins/RealIpResolver.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/plugins/Hodor.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/plugins/SlashRemover.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/plugins/GlobalFilters.h"
    "/root/yacl/makeDrogon/cakeTry/drogon/lib/inc/drogon/plugins/PromExporter.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Drogon" TYPE FILE FILES
    "/root/yacl/makeDrogon/cakeTry/build/drogon/CMakeFiles/DrogonConfig.cmake"
    "/root/yacl/makeDrogon/cakeTry/build/drogon/DrogonConfigVersion.cmake"
    "/root/yacl/makeDrogon/cakeTry/drogon/cmake_modules/FindUUID.cmake"
    "/root/yacl/makeDrogon/cakeTry/drogon/cmake_modules/FindJsoncpp.cmake"
    "/root/yacl/makeDrogon/cakeTry/drogon/cmake_modules/FindSQLite3.cmake"
    "/root/yacl/makeDrogon/cakeTry/drogon/cmake_modules/FindMySQL.cmake"
    "/root/yacl/makeDrogon/cakeTry/drogon/cmake_modules/Findpg.cmake"
    "/root/yacl/makeDrogon/cakeTry/drogon/cmake_modules/FindBrotli.cmake"
    "/root/yacl/makeDrogon/cakeTry/drogon/cmake_modules/Findcoz-profiler.cmake"
    "/root/yacl/makeDrogon/cakeTry/drogon/cmake_modules/FindHiredis.cmake"
    "/root/yacl/makeDrogon/cakeTry/drogon/cmake_modules/FindFilesystem.cmake"
    "/root/yacl/makeDrogon/cakeTry/drogon/cmake/DrogonUtilities.cmake"
    "/root/yacl/makeDrogon/cakeTry/drogon/cmake/ParseAndAddDrogonTests.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Drogon/DrogonTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Drogon/DrogonTargets.cmake"
         "/root/yacl/makeDrogon/cakeTry/build/drogon/CMakeFiles/Export/lib/cmake/Drogon/DrogonTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Drogon/DrogonTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Drogon/DrogonTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Drogon" TYPE FILE FILES "/root/yacl/makeDrogon/cakeTry/build/drogon/CMakeFiles/Export/lib/cmake/Drogon/DrogonTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Drogon" TYPE FILE FILES "/root/yacl/makeDrogon/cakeTry/build/drogon/CMakeFiles/Export/lib/cmake/Drogon/DrogonTargets-noconfig.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/yacl/makeDrogon/cakeTry/build/drogon/trantor/cmake_install.cmake")
  include("/root/yacl/makeDrogon/cakeTry/build/drogon/examples/cmake_install.cmake")
  include("/root/yacl/makeDrogon/cakeTry/build/drogon/drogon_ctl/cmake_install.cmake")

endif()

