FROM httpd:alpine

# Copy apache/site configuration
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./$sites_available /usr/local/apache2/conf/extra/$sites_available

#COPY ./server.crt /usr/local/apache2/conf/server.crt
#COPY ./server.key /usr/local/apache2/conf/server.key
#COPY ./ca.crt /usr/local/apache2/conf/ca.crt

ADD production /usr/local/apache2/htdocs/production
ADD beta /usr/local/apache2/htdocs/beta

