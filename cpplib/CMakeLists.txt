cmake_minimum_required(VERSION 3.20...3.27)

project(cpplib)

include(FetchContent)
FetchContent_Declare(
  cmodule
  URL "https://github.com/scapix-com/cmodule/archive/refs/tags/v2.0.1.tar.gz"
  URL_HASH SHA256=a9477bbefb43b6fabdc2dc044207fe42cca63999c60b6baf06ba0c62fa116ec5
)
FetchContent_MakeAvailable(cmodule)

find_package(Scapix REQUIRED)

file(GLOB_RECURSE bridge_headers CONFIGURE_DEPENDS ${CMAKE_CURRENT_LIST_DIR}/source/*.h)
scapix_add_target(cpplib "com.example.cpplib" "${bridge_headers}")

file(GLOB_RECURSE sources CONFIGURE_DEPENDS ${CMAKE_CURRENT_LIST_DIR}/source/*)
source_group(TREE ${CMAKE_CURRENT_LIST_DIR} FILES ${sources})
target_sources(cpplib PRIVATE ${sources})

target_include_directories(cpplib PUBLIC ${CMAKE_CURRENT_LIST_DIR})
