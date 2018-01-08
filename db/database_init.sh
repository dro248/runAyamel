#!/bin/bash

databases=$(mysql -uroot -p$MYSQL_ROOT_PASSWORD -se "show databases" 2>/dev/null)
for file in $(ls /tmp/*.sql 2>/dev/null); do
    filename=$(basename $file)
    if [[ -n $( printf '%s\n' "${databases[@]}" | grep -e "^${filename%.*}$" ) ]]; then
        echo "Database already exists: $file"
        continue
    fi
    mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "create database ${filename%.*}"
    mysql -uroot -p$MYSQL_ROOT_PASSWORD "${filename%.*}" < "$file"
    echo "Added database: $file."
done

