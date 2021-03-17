#!/bin/sh
source_dir="../dbs"
for f in `ls $source_dir`; do
  name=${f%.sql}
  echo "create database $name" | ./db-exec.sh
  ./import-db.sh $name $source_dir/$f
done
