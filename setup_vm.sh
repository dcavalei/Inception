#!/bin/bash

if [ "$(uname)" == "Linux" ]; then

	while true ; do

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
#elif [ "$(uname)" == "Darwin" ]; then
fi
