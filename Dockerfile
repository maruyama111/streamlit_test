FROM python:3.11-slim

# 必要なシステムパッケージをインストール
RUN apt-get update && apt-get install -y \
    python3-distutils \
    python3-apt \
    build-essential \
    cmake \
    libboost-python-dev \
    libboost-thread-dev \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libgtk-3-dev \
    libatlas-base-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# pipとsetuptoolsを最新に
RUN python3 -m pip install --upgrade pip setuptools wheel

# Pythonライブラリをインストール
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションのコードをコピー
COPY . /app

# アプリケーションを起動
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]
