FROM ubuntu:14.04
MAINTAINER docker@devops.com

RUN apt-get update && apt-get install -y python-software-properties software-properties-common
RUN add-apt-repository ppa:webupd8team/java

RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections

RUN apt-get update && apt-get install -y oracle-java8-installer maven git

RUN git clone https://github.com/santosh32/devops-lookup.git

WORKDIR /devops-lookup/sf-mvc-json-response-java-config

RUN git pull

#RUN mvn clean install

#CMD ["mvn tomcat7:run"]

RUN ["mvn", "package"]

EXPOSE 8080

CMD ["mvn", "tomcat7:run"]


# docker build -t mvc-maven-ubuntu.image .
# docker run -ti --rm -p 8080:8080 mvc-maven-ubuntu.image
# docker run -i -t mvc-maven-ubuntu.image /bin/bash
# http://host-machine

# docker tag mvc-maven-ubuntu.image santosh32/mvc-maven-ubuntu.image
# docker push santosh32/mvc-maven-ubuntu.image