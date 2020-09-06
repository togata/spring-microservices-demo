#/bin/zsh
docker run --rm -d \
    --name admin-server \
    --network petclinic-net \
    --entrypoint ./dockerize \
    -m 512M \
    -p 9090:9090 \
    togata88/spring-petclinic-admin-server \
    -wait=tcp://discovery-server:8761 -timeout=61s -- java org.springframework.boot.loader.JarLauncher 
    