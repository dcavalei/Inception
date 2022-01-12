#!/bin/bash

if [ -z $DOMAIN_NAME ]; then export DOMAIN_NAME=localhost; fi

sed -ie s/'$DOMAIN_NAME'/$DOMAIN_NAME/g /etc/nginx/sites-available/wordpress.conf

openssl req -x509 -nodes -days 365 -subj "/C=PT/ST=Portugal/L=Lisbon/O=42lisbon/CN=dcavalei" \
	-newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;

# Note: You should disable gzip for SSL traffic.
# See: https://bugs.debian.org/773332

# small changes to nginx.conf
sed -ie 's/gzip on;/gzip off;/g' /etc/nginx/nginx.conf
sed -ie 's/ssl_protocols TLSv1 TLSv1.1 TLSv1.2;/ssl_protocols TLSv1.2 TLSv1.3;/g' /etc/nginx/nginx.conf
echo "daemon off;" >> /etc/nginx/nginx.conf

unlink /etc/nginx/sites-enabled/default

ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/

exec "$@"
