cmake_minimum_required(VERSION 3.14...3.26)

project(cpplib)

include(FetchContent)
FetchContent_Declare(
  cmodule
  URL "https://github.com/scapix-com/cmodule/archive/refs/tags/v1.0.38.tar.gz"
  URL_HASH SHA256=43973f0a347cee0d307fe094920e7bebb1ea5c93a16a06bacb49474b8b929efc
)
FetchContent_MakeAvailable(cmodule)

find_package(Scapix REQUIRED)

file(GLOB_RECURSE bridge_headers CONFIGURE_DEPENDS ${CMAKE_CURRENT_LIST_DIR}/source/*.h)
scapix_add_target(cpplib "com.example.cpplib" "${bridge_headers}")

file(GLOB_RECURSE sources CONFIGURE_DEPENDS ${CMAKE_CURRENT_LIST_DIR}/source/*)
source_group(TREE ${CMAKE_CURRENT_LIST_DIR} FILES ${sources})
target_sources(cpplib PRIVATE ${sources})

target_include_directories(cpplib PUBLIC ${CMAKE_CURRENT_LIST_DIR})
