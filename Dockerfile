FROM tomcat:7-jre7
MAINTAINER Emasos

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY ./target/Emasos-Microservice.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]