# 标注cmake版本
cmake_minimum_required(VERSION 3.5)
set(POSITION_INDEPENDENT_CODE True)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
# set(fmt_DIR /root/fmt-10.2.1/support/cmake)

# 项目名称
project(LoginOut CXX)

include(CheckIncludeFileCXX)
# 检查是否包含 any、string_view 和 coroutine 头文件
check_include_file_cxx(any HAS_ANY)
check_include_file_cxx(string_view HAS_STRING_VIEW)
check_include_file_cxx(coroutine HAS_COROUTINE)
if (NOT "${CMAKE_CXX_STANDARD}" STREQUAL "")
    # Do nothing
elseif (HAS_ANY AND HAS_STRING_VIEW AND HAS_COROUTINE)
    set(CMAKE_CXX_STANDARD 20)
elseif (HAS_ANY AND HAS_STRING_VIEW)
    set(CMAKE_CXX_STANDARD 17)
else ()
    set(CMAKE_CXX_STANDARD 14)
endif ()
# 设置 C++ 标准为必须使用, 不使用扩展
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(${PROJECT_NAME} main.cc)

# ##############################################################################
# If you include the drogon source code locally in your project, use this method
# to add drogon 
# add_subdirectory(drogon) 
# target_link_libraries(${PROJECT_NAME} PRIVATE drogon)
#
# and comment out the following lines
find_package(Drogon CONFIG REQUIRED)
target_link_libraries(${PROJECT_NAME} PRIVATE Drogon::Drogon)

# ##############################################################################

if (CMAKE_CXX_STANDARD LESS 17)
    message(FATAL_ERROR "c++17 or higher is required")
elseif (CMAKE_CXX_STANDARD LESS 20)
    message(STATUS "use c++17")
else ()
    message(STATUS "use c++20")
endif ()
include_directories(/usr/local/include)
 
add_compile_options(-mavx2  -mbmi2)
 
include_directories(${SRC_DIR}/dependency/fmt)
include_directories(${SRC_DIR}/dependency/yacl/crypto/)
# find_package(yacl)
# aux_source_directory(dependency/fmt FMT_SRC)
aux_source_directory(controllers CTL_SRC)
aux_source_directory(filters FILTER_SRC)
aux_source_directory(plugins PLUGIN_SRC)
aux_source_directory(models MODEL_SRC)
aux_source_directory(dependency DEPEND_SRC)
# link_directories(${PROJECT_SOURCE_DIR}/dependency/)
# find_library(YACLLIB )
drogon_create_views(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/views
                    ${CMAKE_CURRENT_BINARY_DIR})
# use the following line to create views with namespaces.
# drogon_create_views(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/views
#                     ${CMAKE_CURRENT_BINARY_DIR} TRUE)
# use the following line to create views with namespace CHANGE_ME prefixed
# and path namespaces.
# drogon_create_views(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/views
#                     ${CMAKE_CURRENT_BINARY_DIR} TRUE CHANGE_ME)
find_package(msgpack-cxx REQUIRED)

find_package(FMT REQUIRED) # 
target_include_directories(${PROJECT_NAME}
                           PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}
                                   ${CMAKE_CURRENT_SOURCE_DIR}/models
                                   ${CMAKE_CURRENT_SOURCE_DIR}/dependency)
target_sources(${PROJECT_NAME}
               PRIVATE
               ${SRC_DIR}
               ${CTL_SRC}
               ${FILTER_SRC}
               ${PLUGIN_SRC}
               ${MODEL_SRC}
               ${DEPEND_SRC}
               )
# find_package(fmt REQUIRED)
# target_link_libraries(LoginOut PRIVATE fmt::fmt)

# find_package(GTest REQUIRED)
# target_link_libraries(LoginOut PRIVATE GTest::gtest GTest::gtest_main)

# find_package(absl REQUIRED)
# target_link_libraries(LoginOut PRIVATE absl::stacktrace)

target_link_libraries(LoginOut PRIVATE msgpack-cxx)
target_link_libraries(LoginOut PRIVATE fmt::fmt)
# target_link_libraries(${PROJECT_NAME} PRIVATE spdlog::spdlog)
link_libraries(${PROJECT_SOURCE_DIR}/dependency/lib/libtpre.a)


# target_link_libraries(LoginOut PRIVATE yacl::crypto)

# ##############################################################################
# uncomment the following line for dynamically loading views 
# set_property(TARGET ${PROJECT_NAME} PROPERTY ENABLE_EXPORTS ON)

# ##############################################################################

# add_subdirectory(test)
# add_executable(runtest main.cc)
