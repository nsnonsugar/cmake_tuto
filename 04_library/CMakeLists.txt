#要求CMakeバージョン
cmake_minimum_required(VERSION 3.5.0)

#プロジェクト名
project(hello_cmake_lib)

#ディレクトリ設定
set(SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(INC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/inc)
set(OUT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/lib)

#インクルードパス設定
include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/inc
)


#ファイル出力パス
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${OUT_DIR})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${OUT_DIR})

add_library(
    hello_lib
    STATIC
    ${SRC_DIR}/hello_cmake.c
)

