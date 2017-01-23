FROM alpine:latest

RUN apk add --update \
    php5 \
    php5-curl \
    php5-ctype \
    php5-json \
    php5-phar \
    php5-pdo \
    php5-pdo_mysql \
    php5-pdo_sqlite \
    php5-intl \
    php5-xml \
    php5-zlib \
    php5-openssl \
    php5-dom \
    php5-posix \
    php5-iconv \
    curl \
    git \
    sudo \
    openssh-client && \
    curl -sS -o composer-install.php https://getcomposer.org/installer && \
    php composer-install.php --install-dir=bin --filename=composer && \
    rm composer-install.php
