FROM php:8.0-fpm-alpine

WORKDIR /var/www

RUN curl -L https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions -o  /usr/local/bin/install-php-extensions

RUN chmod +x /usr/local/bin/install-php-extensions && sync && install-php-extensions gd xdebug redis intl opcache PDO_MySQL

RUN apk add --no-cache git wget docker-cli 

RUN curl https://getcomposer.org/composer.phar >> /usr/local/bin/composer

RUN chmod u+s /bin/ping

RUN chmod u+s /usr/local/bin/composer