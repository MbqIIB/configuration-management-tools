FROM ubuntu:14.04

RUN apt-get update && apt-get install -y git

WORKDIR /app

RUN git clone https://github.com/santosh32/devops-lookup.git

#FROM maven:3.5-jdk-8-alpine
#WORKDIR /app
#COPY --from=0 /app/spring-app-with-jenkins /app 
#RUN mvn install

#FROM openjdk:8-jre-alpine
#WORKDIR /app
#COPY --from=1 /app/target/spring-app-with-jenkins /app 

#CMD ["java -jar spring-app-with-jenkins"]

CMD ["echo", "Hello World !!!"]


# docker build -t git-ubuntu.image .
# docker run git-ubuntu.image
# docker run -i -t git-ubuntu.image /bin/bash
# service apache2 start 
# http://host-machine

# docker tag git-ubuntu.image santosh32/git-ubuntu.image
# docker push santosh32/git-ubuntu.image