#!/bin/bash

sed -ie s/'$DOMAIN_NAME'/$DOMAIN_NAME/g /etc/nginx/sites-available/wordpress.conf

# Note: You should disable gzip for SSL traffic.
# See: https://bugs.debian.org/773332

# small changes to nginx.conf
sed -ie 's/gzip on;/gzip off;/g' /etc/nginx/nginx.conf
sed -ie 's/ssl_protocols TLSv1 TLSv1.1 TLSv1.2;/ssl_protocols TLSv1.2 TLSv1.3;/g' /etc/nginx/nginx.conf

rm -f /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/wordpress.conf
