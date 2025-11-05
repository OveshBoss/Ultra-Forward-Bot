FROM python:3.9-slim-bookworm

RUN apt update && apt install -y git && apt upgrade -y

WORKDIR /Ultra-Forward-Bot

COPY . .

RUN chmod +x start.sh
RUN pip3 install -U pip && pip3 install -r requirements.txt

CMD ["bash", "start.sh"]
