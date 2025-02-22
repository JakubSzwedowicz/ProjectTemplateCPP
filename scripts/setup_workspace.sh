#!/usr/bin/bash

sudo apt-get update
sudo apt install ninja-build
sudo apt-get install curl zip unzip tar
sudo apt-get install pkg-config

git submodule update --init --recursive
cmake --workflow --preset debug