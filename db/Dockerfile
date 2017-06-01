# database Dockerfile creator
FROM mysql:latest
COPY *.sql /docker-entrypoint-initdb.d/
COPY database_init.sh /docker-entrypoint-initdb.d/
