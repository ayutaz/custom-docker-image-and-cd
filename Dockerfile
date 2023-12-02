# 使用するベースイメージを指定
FROM python:3.10

# ワーキングディレクトリを設定
WORKDIR /usr/src/app

# 日本時間での現在の日付と時刻を取得し、それを"Hello World"メッセージと一緒に出力するPythonスクリプトを作成
RUN echo "import datetime; print('Hello World at', datetime.datetime.now(datetime.timezone(datetime.timedelta(hours=9), 'JST')))" > hello.py

# Dockerコンテナが起動したときに実行するコマンドを指定
CMD ["python", "./hello.py"]
