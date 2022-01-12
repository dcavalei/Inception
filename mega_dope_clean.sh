#!/bin/bash

docker-compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env down
sudo rm -rf /home/dcavalei/data/mariadb
sudo rm -rf /home/dcavalei/data/wordpress
docker system prune -a
