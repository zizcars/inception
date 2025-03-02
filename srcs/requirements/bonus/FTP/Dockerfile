FROM debian:bullseye

RUN apt-get update && apt-get install -y vsftpd && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/vsftpd/empty

RUN chmod 755 /var/run/vsftpd/empty

COPY /conf/vsftpd.conf /etc/vsftpd.conf

RUN useradd -md /var/www/html ftpuser && echo "ftpuser:ftpuser" | chpasswd 

RUN chown -R ftpuser:ftpuser /var/www/html

CMD ["/usr/sbin/vsftpd"]
