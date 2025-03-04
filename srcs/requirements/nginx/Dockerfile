FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl && \
    rm -rf /var/lib/apt/lists/*

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx.key \
    -out /etc/ssl/certs/nginx.crt \
    -subj "/C=XX/ST=State/L=City/O=Organization/CN=achakkaf.42.fr"

COPY ./conf/default.conf    /etc/nginx/sites-available/achakkaf.42.fr.conf

RUN ln -s /etc/nginx/sites-available/achakkaf.42.fr.conf /etc/nginx/sites-enabled/achakkaf.42.fr.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
