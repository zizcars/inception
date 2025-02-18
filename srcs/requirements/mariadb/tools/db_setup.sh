#!/bin/bash

# If MariaDB is already running (mysqld.pid exists), skip everything.
# If not:
#     Update MariaDB configuration (50-server.cnf).
#     Check if the database exists.
#     Start MariaDB.
#     Create the database and users.
#     Set passwords and privileges.
#     Stop MariaDB (to ensure changes apply).
# Finally, start MariaDB in safe mode for normal operation.

# if [ ! -f "/run/mysqld/mysqld.pid" ];
# then
	sed -i 's/= 127.0.0.1/= 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
	sed -i 's/basedir/port\t\t\t\t\t= 3306\nbasedir/' /etc/mysql/mariadb.conf.d/50-server.cnf
	echo "Inception : 50-server.cnf updated."
	if [ ! -d "/var/lib/mysql/${DB_DATABASE}" ];
	then
		echo "Inception : ${DB_DATABASE} database is being created."
		mysqld_safe &
		sleep 2
		mysql -e "CREATE DATABASE IF NOT EXISTS ${DB_DATABASE};"
		mysql -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_USER_PASSWORD}';"
		mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_USER_PASSWORD}';"
		mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '${DB_ROOT_PASSWORD}';"
		mysql -e "FLUSH PRIVILEGES;"
		mysql -u root --skip-password -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';"
		mysqladmin -u root -p$DB_ROOT_PASSWORD shutdown
# 	else
# 		echo "Inception : ${DB_DATABASE} database is already there.";
	fi
# fi

exec "mysqld_safe"

