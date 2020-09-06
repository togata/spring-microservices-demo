#/bin/zsh
docker run --rm -d \
    --name vets-service \
    --network petclinic-net \
    --entrypoint ./dockerize \
    -m 512M \
    -p 8083:8083 \
    togata88/spring-petclinic-vets-service \
    -wait=tcp://discovery-server:8761 -timeout=61s -- java org.springframework.boot.loader.JarLauncher 
    