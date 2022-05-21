FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y python3-pip python-dev-is-python3 build-essential libpq-dev 
COPY . /app
WORKDIR /app



RUN pip install -r requirements.txt

ENTRYPOINT ./docker_entrypoint.sh

