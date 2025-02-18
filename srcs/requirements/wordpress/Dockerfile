FROM debian:bullseye

RUN apt-get update && apt-get install -y curl php php-fpm php-mysql mariadb-client 

RUN mkdir -p /run/php

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    wp cli update

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/

COPY --chmod=0755 tools/wordpress_setup.sh /usr/local/bin/

ENTRYPOINT [ "/usr/local/bin/wordpress_setup.sh" ]
