FROM maven:3.8.1-openjdk-8
MAINTAINER xiehuiqiang@gmail.com

ADD . /griffin
RUN cd /griffin && mvn install:install-file -DgroupId=io.confluent -DartifactId=kafka-schema-registry-client -Dversion=3.2.0 -Dpackaging=jar -Dfile=kafka-schema-registry-client-3.2.0.jar  &&  mvn  -DskipTests package
