FROM alpine:latest

RUN apk add --no-cache dante-server
RUN mkdir -p /var/run

COPY sockd.conf /etc/sockd.conf
EXPOSE 1080

CMD ["sockd", "-D", "-f", "/etc/sockd.conf"]