FROM debian:bullseye

RUN apt update && apt install -y mariadb-server 

RUN mkdir -p /var/lib/mysql && \
	chown -R mysql:mysql /var/lib/mysql && \
	mkdir -p /run/mysqld && \
	chown -R mysql:mysql /run/mysqld

EXPOSE 3306

CMD [ "mysqld" ]
