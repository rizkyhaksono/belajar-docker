docker image pull mongo:latest

docker container create --name contohmongo --publish 27017:27018 --env MONGO_INITDB_ROOT_USERNAME=rizky --env MONGO_INITDB_ROOT_PASSWORD=rizky mongo:latest

docker container create --name contohmongo2 --publish 27017:27018 --env MONGO_INITDB_ROOT_USERNAME=rizky --env MONGO_INITDB_ROOT_PASSWORD=rizky mongo:latest