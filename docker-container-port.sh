docker image pull nginx:latest

# 8080 it can't, because windows port already took it
docker container create --name contohnginx --publish 8081:80 nginx:latest