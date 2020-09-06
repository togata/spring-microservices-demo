#/bin/zsh
docker run --rm -d \
    --name customers-service \
    --network petclinic-net \
    --entrypoint ./dockerize \
    -m 512M \
    -p 8081:8081 \
    togata88/spring-petclinic-customers-service \
    -wait=tcp://discovery-server:8761 -timeout=61s -- java org.springframework.boot.loader.JarLauncher 
    