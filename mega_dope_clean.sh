#!/bin/bash

docker-compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env down
sudo rm -rf /home/dcavalei/data/mariadb/*
docker system prune -a
