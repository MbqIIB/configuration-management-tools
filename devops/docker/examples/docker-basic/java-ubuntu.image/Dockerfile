FROM ubuntu:14.04
MAINTAINER docker@devops.com

RUN apt-get update && apt-get install -y python-software-properties software-properties-common
RUN add-apt-repository ppa:webupd8team/java

RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections

RUN apt-get update && apt-get install -y oracle-java8-installer

COPY Helloworld.java Helloworld.java

RUN javac Helloworld.java
CMD java Helloworld

# docker build -t java-ubuntu.image .
# docker run java-ubuntu.image

# docker tag java-ubuntu.image santosh32/java-ubuntu.image
# docker push santosh32/java-ubuntu.image
