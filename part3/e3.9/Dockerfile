FROM golang:1.16.15-alpine3.15 AS build-stage

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o /server

FROM scratch

COPY --from=build-stage /server .

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5000

CMD ["/server"]
