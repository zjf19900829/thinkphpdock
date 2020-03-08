FROM php:7.1-apache
RUN apt-get update && apt-get install -y \
		libfreetype6-dev \
		libjpeg62-turbo-dev \
		libmcrypt-dev \
		libpng-dev \
		libxml2-dev\
	&& docker-php-ext-install -j$(nproc) iconv mcrypt \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install -j$(nproc) gd \
	&& pecl install  redis  \
    && docker-php-ext-enable redis \
    && docker-php-ext-install pdo_mysql 

run apt-get install -y --no-install-recommends libxml2-dev  \
    &&  docker-php-ext-install -j$(nproc) soap

#RUN apt-get update && apt-get install -y libmemcached-dev zlib1g-dev \
#	&& pecl install memcached-2.2.0 \
#	&& docker-php-ext-enable memcached

COPY 000-default.conf /etc/apache2/sites-available
#COPY index.php /var/www/html
#COPY www/ /var/www/html/
#RUN chmod 777 /var/www/html/runtime
EXPOSE 80
RUN cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/

