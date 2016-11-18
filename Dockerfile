FROM alpine:3.4

RUN apk update && apk add librrd && rm /var/cache/apk/*

COPY facette-linux-amd64 /facette-linux-amd64
COPY facette.json /facette-linux-amd64/facette.json
COPY providers /facette-linux-amd64/providers

EXPOSE 80

CMD ["/facette-linux-amd64/bin/facette", "-c", "/facette-linux-amd64/facette.json"]
