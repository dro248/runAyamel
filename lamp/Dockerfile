FROM tutum/lamp:latest

RUN apt-get update
RUN apt-get upgrade -y

# Yvideo static js dependencies
COPY Ayamel.js /var/www/html/
COPY EditorWidgets /var/www/html/
COPY TimedText /var/www/html/
COPY subtitle-timeline-editor /var/www/html/

