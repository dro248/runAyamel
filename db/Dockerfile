# database Dockerfile creator
FROM mysql:latest
ADD ayamel.sql /docker-entrypoint-initdb.d
RUN apt-get update && apt-get install wget -y
