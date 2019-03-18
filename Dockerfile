FROM php:7.1-apache-stretch

COPY . /var/www/html

RUN usermod -u 1000 www-data; \
    a2enmod rewrite; \
    chown -R www-data:www-data /var/www/html
