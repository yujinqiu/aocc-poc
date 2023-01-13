#!/usr/bin/env bash

mkdir -p build
pushd build > /dev/null

~/aocc-compiler-4.0.0/bin/clang++ --version
~/aocc-compiler-4.0.0/bin/clang++ \
    -c \
    -Wall \
    -o simdjson.o \
    -I ../include \
    ../src/simdjson.cpp && \

~/aocc-compiler-4.0.0/bin/llvm-ar --version
~/aocc-compiler-4.0.0/bin/llvm-ar \
    rc ../lib/simdjson.a \
    simdjson.o

echo -e "\nwe has lib/simdjson.a build with aocc now."

popd > /dev/null

