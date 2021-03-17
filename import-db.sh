#!/bin/sh
password="not_very_secret"
db_name=$1
file=$2

docker exec -i php-mariadb-docker_mariadb_1 mysql -uroot -p$password $db_name < $file
