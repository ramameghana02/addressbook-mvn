From tomcat:8.5.72-jdk17-openjdk-buster
RUN mkdir -p /usr/local/tomcat/webapps
COPY target/addressbook.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
