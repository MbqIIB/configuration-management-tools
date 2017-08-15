FROM maven:3.5-jdk-8-alpine
MAINTAINER docker@devops.com

WORKDIR sf-boot-mysql-sf-data-jpa-hibernate

ADD ./sf-boot-mysql-sf-data-jpa-hibernate/ ${WORKDIR}

RUN ["mvn", "package"]

EXPOSE 8080

CMD ["mvn", "spring-boot:run"]

# docker-compose up -d

# docker build -t java-mysql-link-maven.image .

# docker tag java-mysql-link-maven.image santosh32/java-mysql-link-maven.image
# docker push santosh32/java-mysql-link-maven.image

# docker logs app-image
# docker inspect java-mysql-link

#------------------------------------
#connect mysql-
# docker exec -it linked-mysql bash
# mysql -uroot -p
#------------------------------------
#connect java-
# docker exec -it java-mysql-link bash
# http://54.186.104.102:8080/create?email=test@docker.com&name=mysql
