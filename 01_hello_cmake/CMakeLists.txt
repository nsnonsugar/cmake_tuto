#要求CMakeバージョン
cmake_minimum_required(VERSION 3.5.0)

#プロジェクト名
project(hello_cmake)


add_executable(
    hello_cmake
    ${CMAKE_CURRENT_SOURCE_DIR}/hello_cmake.c
)

