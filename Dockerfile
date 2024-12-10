FROM python:3.11-slim

RUN python3 -m pip install --upgrade pip setuptools wheel

# 必要なライブラリをインストール
COPY install_dependencies.sh /tmp/install_dependencies.sh
RUN bash /tmp/install_dependencies.sh && rm /tmp/install_dependencies.sh

# Pythonモジュールのインストール
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションのコピー
COPY . /app

# Streamlitアプリを起動
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]

