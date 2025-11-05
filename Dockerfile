FROM python:3.9-slim-bookworm

RUN apt update && apt upgrade -y
RUN apt install git -y

WORKDIR /Ultra-Forward-Bot

COPY . .

RUN pip3 install -U pip && pip3 install -r requirements.txt

CMD ["bash", "start.sh"]
