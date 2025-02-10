FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx && apt-get install -y openssl

COPY  conf/nginx.conf /etc/nginx/

# RUN touch /etc/nginx/ssl/nginx.key /etc/nginx/ssl/nginx.crt

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/C=MO/L=TE/O=1337/OU=student/CN=achakkaf.42.ma"

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
