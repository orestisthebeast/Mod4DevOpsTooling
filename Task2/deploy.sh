#!/bin/bash

# Remove existing containers
docker rm -f $(docker ps -a -q)

# Create a network
docker network create my_network

# Create a volume
docker volume create my_volume

# Build the required images - Flask and MySQL images
docker build -t my_flask_image ./flask-app
docker build -t my_mysql_image ./db

# run MySQL container
docker run -d --name mysql_container --network my_network --network-alias mysql --mount type=volume,source=new-volume,target=/var/lib/mysql my_mysql_image

# run the flask container
docker run -d -p 5000:5000 --name flask_container --network my_network my_flask_image

# run the nginx container
docker run -d -p 80:80 --name nginx_container --network my_network --mount type=bind,source=$(pwd)/nginx/nginx.conf,target=/etc/nginx/nginx.conf nginx

# show running/all containers
docker ps -a




