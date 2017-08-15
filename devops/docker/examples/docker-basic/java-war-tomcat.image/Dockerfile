FROM tomcat:8.0-jre8
MAINTAINER docker@devops.com

RUN apt-get update && apt-get install -y git maven

RUN git clone https://github.com/santosh32/devops-spring.git

WORKDIR /devops-spring/spring-boot-rest-basic

RUN ["mvn", "package"]

ADD target/spring-boot-rest-basic-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/spring-boot-rest-basic.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

# docker build -t java-war-tomcat.image:1.0 .
# docker run -d -p 8080:8080 java-war-tomcat.image:1.0

