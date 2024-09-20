#!/bin/bash

# Start MongoDB container
docker run -d --name mongodbaim -v ~/lab2/mongodb/init.js:/docker-entrypoint-initdb.d/init.js mongo

# Start Express container
docker build -t expressaim ~/lab2/express
docker run -d --name expressaim --link mongodbaim -p 3000:3000 expressaim

# Start Nginx container
docker run -d --name nginxaim -p 8080:80 -v ~/lab2/nginx/nginx.conf:/etc/nginx/nginx.conf -v ~/lab2/nginx/index.html:/usr/share/nginx/html/index.html nginx
