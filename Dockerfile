FROM php:7.1

RUN apt-get update  && \
    apt-get install -y git zip unzip && \
    docker-php-ext-install pdo pdo_mysql && \
    apt-get clean
    
ENTRYPOINT ["/bin/sh","-c"]
