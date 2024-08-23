FROM tomcat:latest

WORKDIR /usr/local/tomcat

COPY target/studentapp-1.0.war /usr/local/tomcat/webapps/student.war
COPY mysql-connector.jar /usr/local/tomcat/lib/

CMD ["catalina.sh", "start"]
CMD ["startup.sh"]

ENTRYPOINT ["catalina.sh", "run"]

