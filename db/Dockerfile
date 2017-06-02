# database Dockerfile creator
FROM mysql:latest
COPY *.sql /tmp/
COPY database_init.sh /docker-entrypoint-initdb.d/
