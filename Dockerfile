FROM php:7.4-apache

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install apache2

# Copy application source
COPY . /var/www/html
RUN chown -R www-data:www-data /var/www

RUN apt-get update -y
RUN docker-php-ext-install mysqli
RUN apt-get install -y git curl vim telnet
RUN echo "nameserver 8.8.4.4" >> /etc/resolv.conf

ENTRYPOINT apachectl -D FOREGROUND
