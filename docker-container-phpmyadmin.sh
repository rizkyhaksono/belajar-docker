docker pull mysql:latest

docker run --name mysqlgue -d -p 3307:3306 -e MYSQL_ROOT_PASSWORD=root mysql:latest

docker run --name phpmyadmingue --link mysqlgue:db -p 8083:80 -d phpmyadmin:latest