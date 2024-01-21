FROM php:7.4-apache

LABEL "Project"="Lamp"
LABEL "Author"="Awele"

WORKDIR /var/www/html/
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y php libapache2-mod-php php-mysql

COPY ../../Application/* /var/www/html/

RUN chown www-data:www-data /var/www/html/submit.php

EXPOSE 80
EXPOSE 443