FROM python:3.9-slim-bookworm

RUN apt update && apt upgrade -y
RUN apt install git -y

COPY requirements.txt /requirements.txt

RUN pip3 install -U pip && pip3 install -r /requirements.txt

WORKDIR /Ultra-Forward-Bot
COPY . .

CMD ["/bin/bash", "/start.sh"]
