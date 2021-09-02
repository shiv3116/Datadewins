#!/bin/bash

if dpkg -l "docker" &> /dev/null; then
      :
else
     sudo apt install "docker"
fi

if dpkg -l "docker-compose" &> /dev/null; then
    :
else
    sudo apt install "docker-compose"
fi

if [ -d docker ]
then
    if [ -d "./docker/www" ]
    then
        :
    else
        echo "--------Creating www directory----------"
        mkdir ./docker/www
        echo "--------Copying index.php-------------"
        cp ./index.php ./docker/www
    fi

    if [ -d "./docker/db" ]
    then
        :
    else
        echo "-----------Creating db directory---------"
        mkdir ./docker/db
    fi
else
    echo "-------Creating docker directory---------"
    mkdir ./docker
    echo "-------Creating www directory in docker"
    mkdir ./docker/www
    echo "--------Copying index.php-------------"
    cp ./index.php ./docker/www

    echo "creating db directory in docker"
    mkdir ./docker/db
fi

sudo cp -r ./apache ./docker
sudo cp -r ./php ./docker
