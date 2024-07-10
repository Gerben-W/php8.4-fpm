#update:09-07-2024

FROM php:8.4-rc-fpm
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-install mysqli pdo_mysql \
    && apt-get clean
