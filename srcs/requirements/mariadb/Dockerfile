FROM debian:bullseye

RUN apt-get update -y && apt-get install mariadb-server -y

COPY tools/mariadb.sh /

RUN sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=wp_database
ENV MYSQL_USER=wp_user
ENV MYSQL_PASSWORD=wp_password

CMD bash /mariadb.sh
