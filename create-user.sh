#!/bin/sh -x
username=$1
password=$2
db=$3

if [ -z $db ]; then
  echo "Creating admin user: $username"
  echo "grant all privileges on *.* TO '$username'@'%' identified by '$password';" | ./db-exec.sh
else
  echo "Creating user: $username"
  echo "grant all privileges on $db.* TO '$username'@'%' identified by '$password';" | ./db-exec.sh
fi


echo "flush privileges" | ./db-exec.sh

