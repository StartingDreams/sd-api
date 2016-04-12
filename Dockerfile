FROM php:7.0.5-apache
MAINTAINER  David Smith <david@startingdreams.com>
WORKDIR /var/www/html/
#COPY config/php.ini /usr/local/etc/php/
ENV APACHE_RUN_USER=www-data \
    APACHE_RUN_GROUP=www-data \
    APACHE_LOG_DIR=/var/log/apache2 \
    APACHE_LOCK_DIR=/var/lock/apache2 \
    APACHE_PID_FILE=/var/run/apache2.pid

COPY etc/apache2/mods-enabled/rewrite.load /etc/apache2/mods-enabled/rewrite.load
COPY etc/apache2/sites-enabled/site.conf /etc/apache2/sites-enabled/site.conf
COPY src/ /var/www/html/
EXPOSE 80
EXPOSE 443
