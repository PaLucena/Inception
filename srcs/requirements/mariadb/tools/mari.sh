#!/bin/sh

cat << EOF > config.sql

CREATE DATABASE IF NOT EXISTS ${MYSQL_NAME};
CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';
ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';
GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%';
FLUSH PRIVILEGES;

EOF

chmod 777 config.sql
chown -R mysql:root /run/mysqld
chown -R mysql:mysql /var/lib/mysql
mv config.sql /var/lib/mysql/config.sql
mariadbd --init-file /var/lib/mysql/config.sql