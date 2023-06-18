FROM debian:buster-slim

RUN apt-get update && apt-get install -y squid openssl

RUN openssl req -new -newkey rsa:2048 -sha256 -days 365 -nodes -x509 -keyout /etc/squid/squid.key -out /etc/squid/squid.crt -subj "/C=US/ST=CA/L=San Francisco/O=Render/CN=proxy.render.com"

COPY squid.conf /etc/squid/squid.conf

EXPOSE 3128

CMD ["squid", "-N"]