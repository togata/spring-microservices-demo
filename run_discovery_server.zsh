#/bin/zsh
docker run --rm -d \
    --name discovery-server \
    --network petclinic-net \
    --entrypoint ./dockerize \
    -m 512M \
    -p 8761:8761 \
    togata88/spring-petclinic-discovery-server \
    -wait=tcp://config-server:8888 -timeout=60s -- java org.springframework.boot.loader.JarLauncher 
    