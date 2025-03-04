FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server mariadb-client && \
	rm -rf /var/lib/apt/lists/*

COPY tools/db_setup.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/db_setup.sh

# EXPOSE 3306:3306

CMD ["/usr/local/bin/db_setup.sh"]

