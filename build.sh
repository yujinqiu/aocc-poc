#!/usr/bin/env bash

mkdir -p build
pushd build

clang++ \
    -Wall \
    -o main \
    -I ../include \
    ../src/main.cpp \
    ../lib/lib.a

popd

