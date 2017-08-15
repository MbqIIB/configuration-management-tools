FROM tomcat:8.0-jre8
MAINTAINER docker@devops.com

ADD http://ftp.yz.yamagata-u.ac.jp/pub/misc/jenkins/war-stable/2.60.1/jenkins.war /usr/local/tomcat/webapps/jenkins.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

# docker build -t jenkins-war-tomcat.image:1.0 .

# docker run jenkins-war-tomcat.image:1.0

$ docker pull jenkins
$ docker images

$ docker run --detach --publish=49001:8080 --volume=/home/ubuntu/work/jenkins_home:/var/jenkins_home --tty --name="my_jenkins_1" jenkins
$ docker ps

$ docker logs my_jenkins_1

