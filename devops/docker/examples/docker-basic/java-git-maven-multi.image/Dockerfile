FROM alpine/git
WORKDIR /app
RUN git clone https://github.com/santosh32/spring-app-with-jenkins.git

FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY --from=0 /app/spring-app-with-jenkins /app 
RUN mvn install

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=1 /app/target/spring-app-with-jenkins /app 

CMD ["java -jar spring-app-with-jenkins"]