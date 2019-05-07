# Pull base image
From tomcat:8-jre8

# Maintainer
MAINTAINER "aromal.jayarajan@infosys.com"

# Copy to images tomcat path
ADD ./target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]