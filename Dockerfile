FROM alpine:latest
RUN apk add --no-cache --virtual .build-deps py-pip libffi-dev python3-dev libc-dev gcc g++ openssl-dev\
  && apk add --no-cache python3 openssl libffi\
  && pip3 install brotli\
  && pip3 install mitmproxy

ENV LANG=en_US.UTF-8

CMD mitmdump -q --mode transparent
