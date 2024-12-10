#!/bin/bash

# 更新とインストール必要パッケージ
echo "Updating and installing system packages..."
apt-get update && apt-get install -y \
    python3-pip \
    cmake \
    git \
    build-essential \
    libopenblas-dev \
    liblapack-dev

# Python依存関係インストール
echo "Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

# 完了メッセージ
echo "Dependencies installation completed."
