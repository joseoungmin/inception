# syntax=docker/dockerfile:1.3
FROM alpine:3.17.5

RUN apk update && apk add nginx openssl

COPY --chmod=644 conf/nginx.conf /etc/nginx/nginx.conf
COPY --chmod=644 tools/seojo.42.fr.crt /
COPY --chmod=644 tools/seojo.42.fr.key /

ENTRYPOINT ["nginx", "-g", "daemon off;"]
