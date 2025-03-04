FROM debian:bullseye

RUN apt-get update && apt-get install -y curl php php-fpm php-mysql mariadb-client && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    wp cli update && \
    apt-get install -y ftp && \
    rm -rf /var/lib/apt/lists/* 


RUN apt-get update && apt-get install iputils-ping -y
RUN mkdir -p /run/php

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/

COPY tools/wordpress_setup.sh /usr/local/bin/

RUN chmod 755 /usr/local/bin/wordpress_setup.sh

# EXPOSE 9000:9000

ENTRYPOINT [ "/usr/local/bin/wordpress_setup.sh" ]
