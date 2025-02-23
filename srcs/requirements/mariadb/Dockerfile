FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server mariadb-client && \
	rm -rf /var/lib/apt/lists/*

COPY tools/db_setup.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/db_setup.sh

CMD ["/usr/local/bin/db_setup.sh"]

