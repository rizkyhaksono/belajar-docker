docker container stop mongovolume

# pwd in linux cli
/d/2-workstation/1-course/Docker/belajar-docker-image

docker container create --name nginxbackup --mount "type=bind,source=/d/2-workstation/1-course/Docker/belajar-docker-image/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=//data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup //bin//bash

tar cvf //backup//backup.tar.gz //data

docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume

# docker run
docker image pull ubuntu:latest

docker container stop mongovolume

docker container run --rm --name ubuntubackup --mount "type=bind,source=/d/2-workstation/1-course/Docker/belajar-docker-image/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=//data" ubuntu:latest tar cvf //backup//backup-lagi.tar.gz //data

docker container start mongovolume