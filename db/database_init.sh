#!/bin/bash
for file in $(ls /tmp/*.sql 2>/dev/null); do
    filename=$(basename $file)
    mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "create database ${filename%.*}";
    mysql -u root -p$MYSQL_ROOT_PASSWORD "${filename%.*}" < "$file"
    echo "Added database: $file."
done

