#!/bin/sh

db=$1

root_password="not_very_secret"

docker exec -i php-mariadb-docker_mariadb_1 mysql -uroot -p$root_password $db
