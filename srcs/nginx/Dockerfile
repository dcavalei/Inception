FROM debian:buster

RUN apt-get update && apt-get install -y \
	nginx \
	opensll \
	&& rm -rf /var/lib/apt/lists/*

COPY wordpress.conf /etc/nginx/sites-available/wordpress.conf

CMD tail -f
