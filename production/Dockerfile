FROM java

RUN apt-get update
RUN apt-get install wget

# Copy code into image
COPY Ayamel /Ayamel/

# Copy in the application.conf file
COPY application.conf /Ayamel/conf/

WORKDIR /Ayamel

# Get sbt
ARG sbt_version
RUN wget "https://dl.bintray.com/sbt/debian/sbt-$sbt_version.deb"
RUN dpkg -i sbt-$sbt_version.deb

