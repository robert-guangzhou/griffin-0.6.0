FROM maven:3.8.1-openjdk-8
MAINTAINER xiehuiqiang@gmail.com

ADD . /griffin
RUN cd /griffin && mvn  -DskipTests package
