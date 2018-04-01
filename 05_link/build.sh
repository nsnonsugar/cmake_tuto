#!/bin/bash

#buildディレクトリの有無をチェック
if [ -e ./build ]; then
    #buildディレクトリがある場合は削除する
    rm -rf ./build
fi

mkdir ./build

cd ./build

cmake ..

make


