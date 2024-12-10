FROM python:3.12-slim

# パッケージインストールに必要なツール
RUN apt-get update && apt-get install -y \
    python3-pip \
    cmake \
    libopenblas-dev \
    liblapack-dev \
    git \
    build-essential

# 作業ディレクトリ設定
WORKDIR /app

# 依存関係インストール
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# アプリケーションファイルコピー
COPY . .

# アプリ起動コマンド
CMD ["streamlit", "run", "app.py"]
