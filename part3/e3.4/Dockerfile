FROM docker:27.0.0-rc.1-cli

RUN apk update && apk add bash git

WORKDIR /app

COPY ./script.sh .

RUN chmod +x script.sh

ENTRYPOINT ["/bin/bash", "/app/script.sh"]

