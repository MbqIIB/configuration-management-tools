FROM openjdk:8-jdk-alpine
MAINTAINER docker@devops.com

COPY Helloworld.java Helloworld.java

RUN javac Helloworld.java
CMD java Helloworld

# docker build -t java-jdk.image .d

# docker run -ti --rm java-jdk.image

# docker tag java-jdk.image santosh32/java-jdk.image
# docker push santosh32/java-jdk.image
