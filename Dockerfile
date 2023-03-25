FROM php:7.4.33-apache
RUN apt-get clean
RUN apt-get update
RUN apt-get install -y libpng-dev
RUN apt-get install -y libicu-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y zip
RUN apt-get install -y libzip-dev
RUN docker-php-ext-install mysqli pdo pdo_mysql zip intl gd
RUN docker-php-ext-enable mysqli zip intl gd
RUN a2enmod rewrite