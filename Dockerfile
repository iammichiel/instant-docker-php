FROM php:7.2-fpm

RUN apt-get update  \
    && apt-get install -y \
        git \
        zip \
        unzip \
        libicu-dev \
        librabbitmq-dev \
        zlib1g-dev \
        libmcrypt-dev \
        supervisor \
    && apt-get install -y libmagickwand-dev --no-install-recommends \
    && docker-php-ext-install pdo pdo_mysql \
    && docker-php-ext-install intl \
    && docker-php-ext-install bcmath \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install exif \
    && pecl install imagick amqp \
    && docker-php-ext-enable imagick amqp \
    && apt-get clean
