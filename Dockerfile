# ベースイメージとしてPython 3.11を使用
FROM python:3.11-slim

# 作業ディレクトリの作成
WORKDIR /app

# install_dependencies.shをコピーして実行
COPY install_dependencies.sh .
RUN chmod +x install_dependencies.sh && ./install_dependencies.sh

# アプリケーションファイルをコピー
COPY . .

# Streamlitアプリケーションの起動
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]

