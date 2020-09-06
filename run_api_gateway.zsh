#/bin/zsh
docker run --rm -d \
    --name api-gateway \
    --network petclinic-net \
    --entrypoint ./dockerize \
    -m 512M \
    -p 8080:8080 \
    togata88/spring-petclinic-api-gateway \
    -wait=tcp://discovery-server:8761 -timeout=61s -- java org.springframework.boot.loader.JarLauncher 
    