FROM php:7.4-apache

LABEL "Project"="Lamp"
LABEL "Author"="Awele"

WORKDIR /var/www/html/
RUN docker-php-ext-install mysqli pdo pdo_mysql && \
    docker-php-ext-enable mysqli

COPY ../../Application/* /var/www/html/

RUN chown www-data:www-data /var/www/html/submit.php && \
    a2enmod rewrite

EXPOSE 80
EXPOSE 443