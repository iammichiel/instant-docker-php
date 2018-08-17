FROM php:7.1

RUN apt-get update  && \
    docker-php-ext-install pdo pdo_mysql
    
ENTRYPOINT ["/bin/sh","-c"]
