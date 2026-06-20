cmake_minimum_required(VERSION 3.20...3.27)

project(cpplib)

include(FetchContent)
FetchContent_Declare(
  cmodule
  URL https://github.com/scapix-com/cmodule/archive/refs/tags/v2.3.0.tar.gz
  URL_HASH SHA256=da4cd5b12524041171acc80c2befe0e1de8ae59ea4dc5fc415de43e532d179dd
)
FetchContent_MakeAvailable(cmodule)

find_package(Scapix REQUIRED)

file(GLOB_RECURSE bridge_headers CONFIGURE_DEPENDS ${CMAKE_CURRENT_LIST_DIR}/source/*.h)
scapix_add_target(cpplib "com.example.cpplib" "${bridge_headers}")

file(GLOB_RECURSE sources CONFIGURE_DEPENDS ${CMAKE_CURRENT_LIST_DIR}/source/*)
source_group(TREE ${CMAKE_CURRENT_LIST_DIR} FILES ${sources})
target_sources(cpplib PRIVATE ${sources})

target_include_directories(cpplib PUBLIC ${CMAKE_CURRENT_LIST_DIR})
