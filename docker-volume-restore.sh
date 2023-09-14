docker volume create mongorestore

docker container run --rm --name ubunturestore --mount "type=bind,source=/d/2-workstation/1-course/Docker/belajar-docker-image/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=//data" ubuntu:latest bash -c "cd //data && tar xvf //backup/backup.tar.gz --strip 1"

docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=//data/db" --env MONGO_INITDB_ROOT_USERNAME=rizky --env MONGO_INITDB_ROOT_PASSWORD=rizky mongo:latest

docker container start mongostore