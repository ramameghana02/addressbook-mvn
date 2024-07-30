FROM tomcat:8.5.72-jdk17-openjdk-buster
ADD /var/lib/jenkins/workspace/Package/target usr/local/tomcat/webapps
EXPOSE 8080
CMD [ "catalina.sh" ,"run"]

