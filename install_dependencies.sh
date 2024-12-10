#!/bin/bash

apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libboost-python-dev \
    libboost-thread-dev \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libgtk-3-dev \
    libatlas-base-dev \
    python3-dev

