FROM ubuntu:14.04
MAINTAINER docker@devops.com

RUN apt-get update && apt-get install -y python-software-properties software-properties-common

RUN add-apt-repository ppa:webupd8team/java

RUN apt-get update && apt-get install -y oracle-jdk7-installer maven

ADD git clone https://github.com/santosh32/spring-app-with-jenkins.git /usr/local/spring-app-with-jenkins

RUN cd /usr/local/spring-app-with-jenkins && mvn install

#CMD ["java", "-cp", "/usr/local/spring-app-with-jenkins/target/spring-app-with-jenkins-1.0-SNAPSHOT.jar", "HelloWorld"]
CMD ["echo", "hellow"]
