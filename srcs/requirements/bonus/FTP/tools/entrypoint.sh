#!/bin/bash

id -u $FTPUSER &> /dev/null || useradd -md /var/www/html $FTPUSER && echo "$FTPUSER:$FTPPASSWORD" | chpasswd 

chown -R $FTPUSER:$FTPUSER /var/www/html

/usr/sbin/vsftpd