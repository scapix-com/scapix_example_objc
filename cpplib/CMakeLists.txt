cmake_minimum_required(VERSION 3.14)

project(cpplib)

include(FetchContent)
FetchContent_Declare(
  cmodule
  URL "https://github.com/scapix-com/cmodule/archive/v1.0.23.tar.gz"
  URL_HASH SHA256=0278ec892e5199a2c60b5d44856b17140a57e82ac160ce23a979030a277c3eb9
)
FetchContent_MakeAvailable(cmodule)

find_package(Scapix REQUIRED)

file(GLOB_RECURSE bridge_headers CONFIGURE_DEPENDS ${CMAKE_CURRENT_LIST_DIR}/source/*.h)
scapix_add_target(cpplib "com.example.cpplib" "${bridge_headers}")

file(GLOB_RECURSE sources CONFIGURE_DEPENDS ${CMAKE_CURRENT_LIST_DIR}/source/*)
source_group(TREE ${CMAKE_CURRENT_LIST_DIR} FILES ${sources})
target_sources(cpplib PRIVATE ${sources})

target_include_directories(cpplib PUBLIC ${CMAKE_CURRENT_LIST_DIR})
