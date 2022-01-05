FROM debian:buster

COPY conf /conf/

RUN apt update && apt upgrade && \
	apt install -y mariadb-server

EXPOSE 3306

ARG MYSQL_WP_NAME
ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_USER
ARG MYSQL_PASSWORD

RUN sh conf/setup.sh

CMD ["mysqld_safe"]