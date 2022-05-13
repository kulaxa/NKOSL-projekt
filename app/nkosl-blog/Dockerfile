FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y python3-pip python-dev build-essential
COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ./docker_entrypoint.sh
