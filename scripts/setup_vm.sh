#!/bin/bash

if [ "$(uname)" == "Linux" ]; then

	while true
	do

		read -p "Install docker? [y/n] " input
		if [ $input == "y" ]; then
			sudo apt-get install -y docker.io
			break;
		elif [ $input == "n" ]; then
			break;
		else
			echo "Bad input!"
		fi

	done

	while true
	do

		read -p "Install docker-compose? [y/n] " input
		if [ $input == "y" ]; then
			sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
			sudo chmod +x /usr/local/bin/docker-compose
			break;
		elif [ $input == "n" ]; then
			break;
		else
			echo "Bad input!"
		fi

	done

	while true
	do

		read -p "Setup DOMAIN_NAME? [y/n] " input
		if [ $input == "y" ]; then
		DOMAIN_NAME="$(cat ./srcs/.env | grep DOMAIN_NAME | sed s/DOMAIN_NAME=//g)"
		( cat /etc/hosts | grep -q $DOMAIN_NAME ) || ( echo "" && cat >> /etc/hosts << EOF
# Inception domain name
127.0.0.1 $DOMAIN_NAME
EOF
)
			break;
		elif [ $input == "n" ]; then
			break;
		else
			echo "Bad input!"
		fi

	done

fi
