#!/bin/sh

cp /conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

mysql -u root -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -u root -e "CREATE DATABASE $MYSQL_WP_NAME;"
mysql -u root $MYSQL_WP_NAME < /var/lib/mysql/$MYSQL_WP_NAME.sql
mysql -u root -e "USE $MYSQL_WP_NAME; GRANT ALL PRIVILEGES ON * TO '$MYSQL_USER'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
