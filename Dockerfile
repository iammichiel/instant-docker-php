FROM alpine:latest

RUN apk update && \
    apk add \
    php5 \
    php5-curl \
    php5-ctype \
    php5-json \
    php5-pdo \
    php5-pdo_mysql \
    php5-pdo_sqlite \
    php5-intl \
    php5-xml \
    php5-dom \
    php5-posix \
    php5-iconv
