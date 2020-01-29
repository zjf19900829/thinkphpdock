FROM php:7.1-apache
RUN apt-get update && apt-get install -y \
		libfreetype6-dev \
		libjpeg62-turbo-dev \
		libmcrypt-dev \
		libpng-dev \
	&& docker-php-ext-install -j$(nproc) iconv mcrypt \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install -j$(nproc) gd \
	&& pecl install  redis  \
    && docker-php-ext-enable redis \
    && docker-php-ext-install pdo_mysql
#RUN apt-get update && apt-get install -y libmemcached-dev zlib1g-dev \
#	&& pecl install memcached-2.2.0 \
#	&& docker-php-ext-enable memcached





#RUN pecl install -o -f redis && \
#	docker-php-ext-enable redis
#COPY phpredis/ /usr/src/

#RUN  cd /usr/src/phpredis && phpize && \
#    ./configure --enable-redis-igbinary && \
#    make && make install


COPY 000-default.conf /etc/apache2/sites-available
EXPOSE 80
RUN cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/

