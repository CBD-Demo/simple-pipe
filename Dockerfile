# Sample App that depends on a standard base image
FROM uday/acmecorp-base

MAINTAINER Udaypal Aarkoti <uaarkoti@gmail.com>

COPY target/Emasos-Microservice.war /usr/local/tomcat/webapps/ROOT.war
RUN rm -rf /usr/local/tomcat/webapps/ROOT

