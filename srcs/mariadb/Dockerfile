FROM debian:buster

# Update the list of available packages and their versions, but don't install or upgrade any packages besides mariadb-server
RUN apt-get update && apt-get install -y \
	mariadb-server \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 3306

# make sure that '  is executable aka: chmod +x docker-entrypoint.sh
COPY docker-entrypoint.sh /usr/local/bin/

CMD docker-entrypoint.sh
