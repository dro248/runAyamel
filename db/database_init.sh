#!/bin/bash
for database in $(ls *.sql | xargs cat | grep "Database:" | sed 's/`//g' | awk '{print $3}'); do
    mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "create database $database";
done
