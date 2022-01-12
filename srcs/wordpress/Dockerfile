# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dcavalei <dcavalei@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/13 22:11:50 by kmeeseek          #+#    #+#              #
#    Updated: 2022/01/12 15:33:55 by dcavalei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

# updating packages
RUN apt-get update

# software installation
RUN apt-get install -y php7.3-fpm php7.3-mysql php7.3-cgi curl

# wp-cli installation
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN sed -i -e 's/listen = \/run\/php\/php7.3-fpm.sock/listen = wordpress:9000/g' \
	/etc/php/7.3/fpm/pool.d/www.conf

WORKDIR /var/www/wordpress

RUN wp core download --path=/var/www/wordpress --allow-root
RUN chown -R www-data:www-data *
RUN chmod -R 755 /var/www/*

RUN service php7.3-fpm start; service php7.3-fpm stop
COPY /tools/start_wp.sh /

CMD bash ../../../start_wp.sh

# **************************************************************************** #
# apt is for the terminal and gives beautiful output while apt-get             #
# and apt-cache are for scripts and give stable, parsable output               #
# https://askubuntu.com/questions/990823/apt-gives-unstable-cli-interface-warni#
# ng                                                                           #
# **************************************************************************** #
# Nginx умеет работать с FastCGI приложениями из коробки, но именно для PHP    #
# дополнительно нужен PHP-FPM.                                                 #
# http://xandeadx.ru/blog/php/866                                              #
# **************************************************************************** #
# Install the php-fpm module along with an additional helper package,          #
# php-mysql, which will allow PHP to communicate with your database backend.   #
# The installation will pull in the necessary PHP core files.                  #
# https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-m#
# ysql-php-lemp-stack-ubuntu-18-04                                             #
# **************************************************************************** #
# WP-CLI is the command-line interface for WordPress. You can update plugins,  #
# configure multisite installations and much more, without using a web browser.#
# To use WP-CLI from the command line by typing wp, make the file executable   #
# and move it to somewhere in your PATH.                                       #
# https://wp-cli.org/                                                          #
# **************************************************************************** #
# wp core download - Downloads and extracts WordPress core files               #
# to the specified path.                                                       #
# https://developer.wordpress.org/cli/commands/core/download/                  #
# **************************************************************************** #
# wp config create - Creates a new wp-config.php with database constants,      #
# and verifies that the database constants are correct.                        #
# https://developer.wordpress.org/cli/commands/config/create/                  #
# **************************************************************************** #
# issue "/usr/bin/env: 'mysql': No such file or directory" soulution:          #
# But as you can see, it relies on the mysql command which isn't installed.    #
# Fortunately we can easily remedy this by installing a Debian package.        #
# With the mysql command installed, we can verify access to the database using #
# the user ID and password we configured.                                      #
# https://techsparx.com/software-development/docker/damp/wordpress-local.html  #
# or use --skip-check                                                          #
# **************************************************************************** #