
FROM php:5.6-alpine

RUN apk update && \
    apk add autoconf openssl-dev g++ icu-dev make zlib-dev git && \

    docker-php-ext-configure intl && \
    docker-php-ext-install intl iconv && \
    pecl install mongo && \
    docker-php-ext-enable mongo && \
    apk del --purge autoconf openssl-dev g++ make zlib-dev

ADD include/usr/local/etc/php/php.ini /usr/local/etc/php/php.ini

ENTRYPOINT ["/bin/sh","-c"]
