# 使用するベースイメージを指定
FROM python:3.10

# ワーキングディレクトリを設定
WORKDIR /usr/src/app

# "Hello World"を出力するPythonスクリプトを作成
RUN echo "print('Hello World')" > hello.py

# Dockerコンテナが起動したときに実行するコマンドを指定
CMD ["python", "./hello.py"]
