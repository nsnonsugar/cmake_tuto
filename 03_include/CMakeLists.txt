#要求CMakeバージョン
cmake_minimum_required(VERSION 3.5.0)

#プロジェクト名
project(hello_cmake)

#ディレクトリ設定
set(SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(INC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/inc)

message("SRC_DIR : ${SRC_DIR}")
message("INC_DIR : ${INC_DIR}")

include_directories(
    ${INC_DIR}
)


add_executable(
    hello_cmake
    ${SRC_DIR}/main.c
    ${SRC_DIR}/hello_cmake.c
)

