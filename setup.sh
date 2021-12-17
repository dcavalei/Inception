#!/usr/bin/env bash

if [ "$(uname)" == "Linux" ]; then
    apt-get install -y docker
#elif [ "$(uname)" == "Darwin" ]; then

fi
