FROM debian:buster

RUN apt update && apt upgrade \
	apt install -y mariadb-server systemd

CMD /bin/sh
