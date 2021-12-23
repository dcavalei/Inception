FROM debian:buster

COPY conf /

RUN apt update && apt upgrade && \
	apt install -y mariadb-server

RUN sed s/'${MYSQL_WP_NAME}'/"${MYSQL_WP_NAME}"/ /conf/db_setup.sql && \
sed s/'${MYSQL_ROOT_PASSWORD}'/"${MYSQL_ROOT_PASSWORD}"/ /conf/db_setup.sql && \
sed s/'${MYSQL_USER}'/"${MYSQL_USER}"/ /conf/db_setup.sql && \
sed s/'${MYSQL_PASSWORD}'/"${MYSQL_PASSWORD}"/ /conf/db_setup.sql

CMD /bin/sh
