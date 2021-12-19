FROM alpine:3.15.0

VOLUME ["/sys/fs/cgroup"]

# update
RUN apk update && apk upgrade

RUN apk add openrc mariadb mariadb-common mariadb-client

CMD /bin/sh
