FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt install -y nodejs

WORKDIR /usr/src/app

COPY package* .

RUN npm install

COPY . .

RUN npm run build

EXPOSE 5000

RUN npm install -g serve

CMD serve -s -l 5000 build
