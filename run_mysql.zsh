#!/bin/zsh
docker run --rm -d \
    --name mysql-server \
    --network petclinic-net \
    -e MYSQL_ROOT_PASSWORD=petclinic \
    -e MYSQL_DATABASE=petclinic \
    -p 3306:3306 \
    -v conf.d:/etc/mysql/conf.d:ro \
    mysql:5.7.8