#!/usr/bin/bash

sudo apt-get update
sudo apt install ninja-build
sudo apt-get install curl zip unzip tar
sudo apt-get install pkg-config
sudo apt install clang-format

git submodule update --init --recursive
cmake --workflow --preset configure-build-test-debug