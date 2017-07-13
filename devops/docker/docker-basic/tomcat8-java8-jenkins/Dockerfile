FROM tomcat:8.0-jre8
MAINTAINER info@devops.com

ADD http://ftp.yz.yamagata-u.ac.jp/pub/misc/jenkins/war-stable/2.60.1/jenkins.war /usr/local/tomcat/webapps/jenkins.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

# docker build -t tomcat8-java8-jenkins:1.0 .

# docker run tomcat8-java8-jenkins:1.0