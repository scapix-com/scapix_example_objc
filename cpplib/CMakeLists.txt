cmake_minimum_required(VERSION 3.20...3.27)

project(cpplib)

include(FetchContent)
FetchContent_Declare(
  cmodule
  URL https://github.com/scapix-com/cmodule/archive/refs/tags/v2.5.0.tar.gz
  URL_HASH SHA256=0b5cfb0d88e8a9b7801b8c423d6713785ddce65692f35d9081a56695a6cfaaea
)
FetchContent_MakeAvailable(cmodule)

find_package(Scapix REQUIRED)

file(GLOB_RECURSE bridge_headers CONFIGURE_DEPENDS ${CMAKE_CURRENT_LIST_DIR}/source/*.h)
scapix_add_target(cpplib "com.example.cpplib" "${bridge_headers}")

file(GLOB_RECURSE sources CONFIGURE_DEPENDS ${CMAKE_CURRENT_LIST_DIR}/source/*)
source_group(TREE ${CMAKE_CURRENT_LIST_DIR} FILES ${sources})
target_sources(cpplib PRIVATE ${sources})

target_include_directories(cpplib PUBLIC ${CMAKE_CURRENT_LIST_DIR})
