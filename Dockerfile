FROM tomcat:latest

WORKDIR /usr/local/tomcat

COPY target/student.war /usr/local/tomcat/webapps/
COPY mysql-connector.jar /usr/local/tomcat/lib/

CMD ["catalina.sh", "start"]
CMD ["startup.sh"]

ENTRYPOINT ["catalina.sh", "run"]
