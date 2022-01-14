#!/bin/bash

if [ ! -f /var/www/html/wp-config.php ]
then
	mv /wordpress/* /var/www/html/
	mv /wp-config.php /var/www/html/
	sed -ie s/'$MYSQL_WP_NAME'/$MYSQL_WP_NAME/g var/www/html/wp-config.php
	sed -ie s/'$MYSQL_USER'/$MYSQL_USER/g var/www/html/wp-config.php
	sed -ie s/'$MYSQL_PASSWORD'/$MYSQL_PASSWORD/g var/www/html/wp-config.php
	chown -R www-data:www-data /var/www/html/*
	rm /var/www/html/wp-config-sample.php
fi

sed -ie 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/g' \
/etc/php/7.3/fpm/pool.d/www.conf

exec "$@"
