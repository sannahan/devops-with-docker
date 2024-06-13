FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

RUN go build

ENV PORT=8080
# request origin changed to match nginx
ENV REQUEST_ORIGIN=http://localhost/

CMD ./server
