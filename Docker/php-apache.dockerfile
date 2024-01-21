FROM php:8.2-apache

LABEL "Project"="Lamp"
LABEL "Author"="Awele"

WORKDIR /var/www/html/
RUN apt install -y php libapache2-mod-php php-mysql

COPY ../Application/* /var/www/html/

RUN chown www-data:www-data /var/www/html/submit.php

EXPOSE 80
EXPOSE 443
