FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    php-cli php-xml php-mysql wget \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

RUN wget -O index.php "https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php"

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html"]