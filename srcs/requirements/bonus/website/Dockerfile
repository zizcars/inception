FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/* 

COPY index.html /var/www/html

COPY styles.css /var/www/html

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
