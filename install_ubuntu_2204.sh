#!/bin/bash

sudo apt install cmake g++ build-essential gnuradio libsndfile1-dev -y
rm -rf build
mkdir build
cd build
cmake ..
make
sudo make install
sudo ldconfig
