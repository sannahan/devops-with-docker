FROM ubuntu:22.04

WORKDIR /

RUN apt-get update && apt-get -y install curl

COPY script.sh .

CMD ./script.sh
