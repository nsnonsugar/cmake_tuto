#要求CMakeバージョン
cmake_minimum_required(VERSION 3.5.0)

#プロジェクト名
project(hello_cmake)

#ディレクトリ設定
set(SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(INC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/inc)

#コンパイラオプション
set(CMAKE_C_FLAGS "-Wall -O3")
set(CMAKE_CXX_FLAGS "-Wall -O3")

include_directories(
    ${INC_DIR}
)


add_executable(
    hello_cmake
    ${SRC_DIR}/main.c
    ${SRC_DIR}/hello_cmake.c
)

