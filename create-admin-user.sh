#!/bin/sh
username=$1
password=$2

echo "grant all privileges on *.* TO '$username'@'%' identified by '$password';" | ./db-exec.sh


