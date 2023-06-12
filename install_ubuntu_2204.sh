#!/bin/bash

BUILD_DIRECTORY="build"

sudo apt install cmake g++ build-essential gnuradio libsndfile1-dev -y

if [ -d "$BUILD_DIRECTORY" ]; then
  cd "$BUILD_DIRECTORY"
  sudo make uninstall
else
  mkdir "$BUILD_DIRECTORY"
  cd "$BUILD_DIRECTORY"
fi

cmake ..
make
sudo make install
sudo ldconfig
