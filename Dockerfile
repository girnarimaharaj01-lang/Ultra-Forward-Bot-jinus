FROM python:3.10.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN mkdir /nd-Forward-Bot
WORKDIR /nd-Forward-Bot
COPY . /nd-Forward-Bot
COPY . .

CMD gunicorn app:app & python3 bot.py

