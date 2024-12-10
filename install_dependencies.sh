#!/bin/bash

echo "Updating system packages..."
apt-get update && apt-get install -y \
    python3-pip \
    python3-distutils \
    cmake \
    build-essential \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libboost-python-dev \
    libboost-thread-dev

echo "Upgrading pip..."
pip install --upgrade pip

echo "Installing Python dependencies..."
pip install -r requirements.txt

