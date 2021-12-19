#!/bin/bash

docker images

read -p "image_name:tag " var

container_id=`docker run --entrypoint /bin/sh -itd $var`

docker exec -it $container_id /bin/sh

read -p "stop container? [y/n] " var
if [ $var == "y" ]
then
	docker stop $container_id
	read -p "remove container? [y/n] " var
	if [ $var == "y" ]
	then
		docker rm $container_id
	fi
fi



