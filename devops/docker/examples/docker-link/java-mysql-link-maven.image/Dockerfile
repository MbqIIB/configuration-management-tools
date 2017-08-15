FROM maven:3.5-jdk-8-alpine
MAINTAINER docker@devops.com

WORKDIR sf-boot-mysql-sf-data-jpa-hibernate

ADD ~/configuration-management-tools/java/sf-boot-mysql-sf-data-jpa-hibernate/ ${WORKDIR}

#RUN ["mvn", "package"]

#EXPOSE 8080

#CMD ["mvn", "spring-boot:run"]

CMD ["echo", "hi"]

# mvn spring-boot:run -Dfork=true
# docker build -t java-mysql-link-maven.image .

##### docker run -ti --rm -p 8080:8080 java-mysql-link-maven.image
# docker run -d --name=linked-mysql --net=host --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_DATABASE=mydb" --env="MYSQL_USER=mydbuser" --env="MYSQL_PASSWORD=mydbpassword" --publish 3306:3306 mysql
# docker run -d --name=linked-mysql --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_DATABASE=mydb" --env="MYSQL_USER=mydbuser" --env="MYSQL_PASSWORD=mydbpassword" --publish 3306:3306 mysql

# docker run -d --name java-mysql-link --link linked-mysql:mysql -p 8080:8080 java-mysql-link-maven.image

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
