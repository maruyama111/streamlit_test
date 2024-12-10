#!/bin/bash

# システムパッケージの更新とインストール
echo "Updating system packages..."
apt-get update && apt-get install -y \
    python3-pip \
    python3-distutils \
    cmake \
    git \
    build-essential \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libboost-python-dev \
    libboost-thread-dev

# Python依存関係インストール
echo "Upgrading pip..."
pip install --upgrade pip

# 必要なモジュールをインストールする
pip install -r requirements.txt
