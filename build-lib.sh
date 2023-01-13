#!/usr/bin/env bash

mkdir -p build
pushd build

~/aocc-compiler-4.0.0/bin/clang++ \
    -c \
    -Wall \
    -o lib.o \
    -I ../include \
    ../src/lib.cpp && \

~/aocc-compiler-4.0.0/bin/llvm-ar \
    rc ../lib/lib.a \
    lib.o

popd

