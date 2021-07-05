FROM php:7-apache
 
RUN apt-get update && apt-get install -y \
    git \
    vim \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install mysqli

RUN echo 'Debian Apache y PHP' > /var/www/html/index.html
