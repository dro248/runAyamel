# Building the yvideo image from a Dockerfile
FROM tutum/lamp:latest
FROM java

# required for sbt clean stage
RUN apt-get update
RUN apt-get install wget

# Copy code into image
COPY Ayamel /Ayamel/
COPY Ayamel.js /var/www/html/
COPY EditorWidgets /var/www/html/
COPY TimedText /var/www/html/
COPY subtitle-timeline-editor /var/www/html/

# Copy in the application.conf file
COPY application.conf /Ayamel/conf/

WORKDIR /Ayamel

# Get sbt
ARG sbt_version
RUN wget "https://dl.bintray.com/sbt/debian/sbt-$sbt_version.deb"
RUN dpkg -i sbt-$sbt_version.deb

