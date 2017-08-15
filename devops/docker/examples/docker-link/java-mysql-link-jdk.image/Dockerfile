FROM openjdk:8-jdk-alpine
MAINTAINER docker@devops.com

#RUN apt-get update && apt-get install -y maven git

RUN git clone https://github.com/santosh32/configuration-management-tools.git

WORKDIR /configuration-management-tools/java/sf-boot-mysql-sf-data-jpa-hibernate

RUN git pull

RUN ["mvn", "package"]

#EXPOSE 8080

#CMD ["mvn", "spring-boot:run"]

CMD ["echo", "Build Successfully"]

# mvn spring-boot:run -Dfork=true
# docker build -t java-mysql-link-jdk.image .

##### docker run -ti --rm -p 8080:8080 java-mysql-link-jdk.image
# docker run -d --name=linked-mysql --net=host --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_DATABASE=mydb" --env="MYSQL_USER=mydbuser" --env="MYSQL_PASSWORD=mydbpassword" --publish 3306:3306 mysql
# docker run -d --name=linked-mysql --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_DATABASE=mydb" --env="MYSQL_USER=mydbuser" --env="MYSQL_PASSWORD=mydbpassword" --publish 3306:3306 mysql

# docker run -d --name java-mysql-link --link linked-mysql:mysql -p 8080:8080 java-mysql-link-jdk.image

# docker tag java-mysql-link-jdk.image santosh32/java-mysql-link-jdk.image
# docker push santosh32/java-mysql-link-jdk.image

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
