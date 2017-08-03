FROM ubuntu:14.04
MAINTAINER docker@devops.com

RUN apt-get update && apt-get install -y python-software-properties software-properties-common
RUN add-apt-repository ppa:webupd8team/java

RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections

RUN apt-get update && apt-get install -y oracle-java8-installer maven

ADD ./java-maven-helloworld /usr/local/java-maven-helloworld
RUN cd /usr/local/java-maven-helloworld && mvn install

CMD ["java", "-jar", "/usr/local/java-maven-helloworld/target/java-maven-helloworld-1.0-SNAPSHOT.jar"]

# docker build -t java-maven-helloworld:1.0 .
# docker run java-maven helloworld:1.0

# docker tag java-maven-helloworld:1.0 santosh32/java-maven-helloworld:1.0
# docker push santosh32/java-maven-helloworld:1.0
