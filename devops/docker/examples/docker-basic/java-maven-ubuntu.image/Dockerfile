FROM ubuntu:14.04
MAINTAINER docker@devops.com

RUN apt-get update && apt-get install -y python-software-properties software-properties-common
RUN add-apt-repository ppa:webupd8team/java

RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections

RUN apt-get update && apt-get install -y oracle-java8-installer maven

WORKDIR java-maven-helloworld

ADD ./java-maven-helloworld/ ${WORKDIR}

RUN mvn install

CMD ["java", "-jar", "/java-maven-helloworld/target/java-maven-helloworld-1.0-SNAPSHOT.jar"]

CMD ["java", "-cp", "/java-maven-helloworld/target/java-maven-helloworld-1.0-SNAPSHOT.jar", "HelloWorld"]

# docker build -t java-maven-ubuntu.image:1.0 .
# docker run java-maven-ubuntu.image:1.0

# docker tag java-maven-ubuntu.image:1.0 santosh32/java-maven-ubuntu.image:1.0
# docker push santosh32/java-maven-ubuntu.image:1.0
