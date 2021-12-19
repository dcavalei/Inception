#!/bin/bash

read -p "image name: " name
read -p "image tag: " tag

docker build -t $name:$tag .
