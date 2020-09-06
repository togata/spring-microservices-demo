#!/bin/zsh
docker run --rm -d \
    --name config-server \
    --network petclinic-net \
    -m 512M \
    -p 8888:8888 \
    togata88/spring-petclinic-config-server
