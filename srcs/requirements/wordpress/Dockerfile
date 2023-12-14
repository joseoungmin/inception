# syntax=docker/dockerfile:1.3
FROM alpine:3.17.5

RUN apk update && apk add php81 php81-curl php81-phar php81-fpm php81-mysqli php81-mbstring php81-tokenizer php81-dom php81-exif php81-fileinfo php81-pecl-imagick php81-zip php81-gd php81-iconv php81-intl mariadb-client fcgi

ADD --chmod=755 https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /usr/local/bin/wp
COPY --chmod=644 conf/www.conf /etc/php81/php-fpm.d/www.conf
COPY --chmod=755 tools/farming.sh /

# Start
WORKDIR /var/www
ENTRYPOINT ["/farming.sh"]

