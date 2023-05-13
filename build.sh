#!/bin/sh

git submodule update --init
echo "Building trace library..."
(cd tracelib; make && make install)

echo "Building actsim..."
make CXX=mpic++ CC=mpicc depend && make && make install
