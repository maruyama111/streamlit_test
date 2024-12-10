# ベースイメージとしてPython 3.12を使用
FROM python:3.12-slim

# システムパッケージインストールとPython依存関係設定
COPY install_dependencies.sh .
RUN chmod +x install_dependencies.sh && ./install_dependencies.sh

# 作業ディレクトリ設定
WORKDIR /app

# アプリケーションファイルコピー
COPY . .

# Streamlitアプリ起動コマンド
CMD ["streamlit", "run", "app.py"]
