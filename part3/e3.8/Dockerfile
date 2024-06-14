FROM node:16.20.2-alpine3.18 AS build-stage

WORKDIR /app

COPY package* .

RUN npm install

COPY . .

RUN npm run build

FROM node:16.20.2-alpine3.18

WORKDIR /app

COPY --from=build-stage /app/build ./build 

ENV REACT_APP_BACKEND_URL=http://localhost/api

RUN npm install -g serve && adduser -D appuser

USER appuser

CMD serve -s -l 5000 build
