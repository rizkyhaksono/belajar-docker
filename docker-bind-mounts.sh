docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/d/2. Workstation/1. course/Docker/belajar-docker-image/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=rizky --env MONGO_INITDB_ROOT_PASSWORD=rizky mongo:latest