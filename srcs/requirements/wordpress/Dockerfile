FROM debian:bullseye

RUN apt update && \
	apt install -y \
	php-fpm \
	php-mysql \
	php-curl \
	php-mbstring \
	php-xml \
	php-zip \
	wget \
	curl \
	unzip \
	tar \
	mariadb-client

RUN mkdir -p /run/php && \
	sed -i 's/;daemonize = yes/daemonize = no/' /etc/php/7.4/fpm/php-fpm.conf

RUN mkdir -p /var/www/html/ && chown -R www-data:www-data /var/www/html

WORKDIR /var/www/html

RUN curl -o wordpress.tar.gz https://wordpress.org/latest.tar.gz && \
	tar -xzf wordpress.tar.gz --strip-components=1 && \
	rm wordpress.tar.gz && \
	chown -R www-data:www-data /var/www/html

EXPOSE 9000


CMD [ "php-fpm7.4", "--nodaemonize" ]
