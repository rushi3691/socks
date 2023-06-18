FROM alpine:latest

RUN apk add --no-cache dante-server

COPY sockd.conf /etc/sockd.conf

CMD sockd -D -f /etc/sockd.conf