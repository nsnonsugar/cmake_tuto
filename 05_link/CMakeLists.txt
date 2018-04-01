#要求CMakeバージョン
cmake_minimum_required(VERSION 3.5.0)

#プロジェクト名
project(hello_cmake_lib)

#ディレクトリ設定
set(SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(EXT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/external)
set(OUT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/output)

#インクルードパス設定
include_directories(
    ${EXT_DIR}/inc
)

#ファイル出力パス
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${OUT_DIR})

#ライブラリパス設定
link_directories(
    ${EXT_DIR}/lib
)

add_executable(
    hello_link
    ${SRC_DIR}/main.c
)

target_link_libraries(
    hello_link
    hello_lib
)

