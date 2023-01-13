#!/usr/bin/env bash

mkdir -p build
pushd build > /dev/null

clang++ --version
clang++ \
    -Wall \
    -o simd \
    -I ../include \
    ../src/quickstart.cpp \
    ../lib/simdjson.a

echo -e "run ./build/simd to validate it."

popd > /dev/null

