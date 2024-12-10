# ベースイメージとしてPython 3.11を使用
FROM python:3.11-slim

# install_dependencies.shコピーして実行する設定
COPY install_dependencies.sh .
RUN chmod +x install_dependencies.sh && ./install_dependencies.sh

# 作業ディレクトリ設定
WORKDIR /app

# アプリケーションファイルコピー
COPY . .

# Streamlitアプリ起動コマンド
CMD ["streamlit", "run", "app.py"]

