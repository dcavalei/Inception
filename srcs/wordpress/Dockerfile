# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dcavalei <dcavalei@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/13 22:11:50 by kmeeseek          #+#    #+#              #
#    Updated: 2022/01/14 22:54:07 by dcavalei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

# updating packages
RUN apt-get update && apt-get install -y \
	php7.3 \
	php-fpm \
	php-cli \
	wget \
	curl \
	php-mysql \
	php-mbstring \
	php-xml \
	sendmail \
	mariadb-client \
	&& rm -rf /var/lib/apt/lists/* \
	&& mkdir /run/php

RUN wget https://wordpress.org/wordpress-5.8.3.tar.gz \
	&& tar -xvzf wordpress-5.8.3.tar.gz \
	&& rm -rf wordpress-5.8.3.tar.gz

COPY tools/docker-entrypoint.sh /usr/local/bin/
COPY tools/wp-config.php /

ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "./usr/sbin/php-fpm7.3", "-F" ]
