CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

# set c++ standard to c++14
SET (CMAKE_CXX_STANDARD 14)

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -DDEBUG")

# export compile commands for completion plugins
SET (CMAKE_EXPORT_COMPILE_COMMANDS 1)

# Import LLVM
find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
llvm_map_components_to_libnames(
  llvm_libs
  all
)

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

include_directories(include deps)

add_subdirectory(deps/syntax_tree)
add_subdirectory(deps/analyzer)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

add_subdirectory(src/io)
add_subdirectory(src/syntax_tree_cpp)
add_subdirectory(src/cminusc)
add_subdirectory(tests)
