 
cmake_minimum_required(VERSION 3.10)
 
project(yacl)
 
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY lib)
 
set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS "-fPIC")
 
include_directories(/usr/local/include /usr/local/include/sodium/ /root/intel/ippcp_2021.8.0/include)
link_directories(/root/intel/ippcp_2021.8.0/lib/intel64/ )
 
add_compile_options(-mfma -mavx2  -mbmi2 -maes -mpclmul)
 
set(SRC_DIR ./yacl) 
 
set(ALL_SRC )
set(Link_SRC )
 
function(SearchR _DIR SRC)
    set(DIR ${${_DIR}})
    set(Tmp_List )
    foreach(TMP_DIR ${DIR})
	file(GLOB_RECURSE LIST "${TMP_DIR}/*.cc" "${TMP_DIR}/*.c")
        list(FILTER LIST EXCLUDE REGEX ".*test.cc")
        list(FILTER LIST EXCLUDE REGEX ".*bench.cc")
	list(FILTER LIST EXCLUDE REGEX ".*benchmark.*")
        list(APPEND Tmp_List ${LIST})
    endforeach()
    set(${SRC} ${Tmp_List} PARENT_SCOPE)
endfunction(SearchR)
 
 
SearchR(SRC_DIR ALL_SRC)
set(Provider_DIR ./yacl/crypto/ossl-provider)
SearchR(Provider_DIR Provider_SRC)
message("All Source files are ${ALL_SRC}")
add_library(${PROJECT_NAME} STATIC ${ALL_SRC})
message("Shared Libraries from ${Provider_SRC}")
add_library(prov_shared SHARED ${Provider_SRC})
 
 
target_link_libraries(${PROJECT_NAME} sodium mcl blake3)
target_link_libraries(${PROJECT_NAME} libcrypto_mb.a libippcp.a)
target_link_libraries(${PROJECT_NAME} brpc ssl crypto interconnection)
target_link_libraries(${PROJECT_NAME} tommath)
target_link_libraries(${PROJECT_NAME} gflags leveldb snappy protobuf cpu_features spdlog benchmark)
target_link_libraries(${PROJECT_NAME} absl_bad_any_cast_impl absl_bad_optional_access absl_bad_variant_access absl_base)
target_link_libraries(${PROJECT_NAME} absl_city absl_civil_time absl_cord absl_cord_internal absl_cordz_functions)
target_link_libraries(${PROJECT_NAME} absl_cordz_handle absl_cordz_info absl_cordz_sample_token absl_crc32c absl_crc_cord_state)
target_link_libraries(${PROJECT_NAME} absl_crc_cpu_detect absl_crc_internal absl_debugging_internal absl_demangle_internal)
target_link_libraries(${PROJECT_NAME} fmt gtest z pthread)
target_link_libraries(prov_shared ssl crypto spdlog fmt)
 
INSTALL(TARGETS prov_shared ${PROJECT_NAME}
        RUNTIME DESTINATION /execroot/bin/
        LIBRARY DESTINATION /execroot/bin/yacl/crypto/ossl-provider/
        ARCHIVE DESTINATION /usr/local/lib
)