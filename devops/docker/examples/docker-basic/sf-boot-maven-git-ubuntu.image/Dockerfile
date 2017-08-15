FROM ubuntu:14.04
MAINTAINER docker@devops.com

RUN apt-get update && apt-get install -y python-software-properties software-properties-common
RUN add-apt-repository ppa:webupd8team/java

RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections

RUN apt-get update && apt-get install -y oracle-java8-installer maven git

RUN git clone https://github.com/santosh32/devops-spring.git

WORKDIR /devops-spring/spring-boot-rest-basic

RUN git pull

RUN ["mvn", "package"]

EXPOSE 8080

CMD ["mvn", "spring-boot:run"]

# mvn spring-boot:run -Dfork=true
# docker build -t sf-boot-maven-git-ubuntu.image .
# docker run -ti --rm -p 8080:8080 sf-boot-maven-git-ubuntu.image
# docker run -i -t sf-boot-maven-git-ubuntu.image /bin/bash
# http://localhost:8080/employees/James

# docker tag sf-boot-maven-git-ubuntu.image santosh32/sf-boot-maven-git-ubuntu.image
# docker push santosh32/sf-boot-maven-git-ubuntu.image

# docker logs app-image