FROM php:8.0-fpm-alpine

WORKDIR /var/www

RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions gd xdebug redis intl opcache PDO_MySQL

RUN apk add --no-cache git wget 

RUN curl https://getcomposer.org/composer.phar >> /usr/local/bin/composer