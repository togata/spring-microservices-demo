#/bin/zsh
docker run --rm -d \
    --name visits-service \
    --network petclinic-net \
    --entrypoint ./dockerize \
    -m 512M \
    -p 8082:8082 \
    togata88/spring-petclinic-visits-service \
    -wait=tcp://discovery-server:8761 -timeout=61s -- java org.springframework.boot.loader.JarLauncher 
    