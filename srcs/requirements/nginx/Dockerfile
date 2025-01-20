FROM debian:bullseye

RUN apt update && \
	apt install -y nginx openssl

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/html

RUN chown -R www-data:www-data /var/www/html

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]
