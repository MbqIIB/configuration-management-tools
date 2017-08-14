FROM ubuntu:14.04
MAINTAINER docker@devops.com

RUN apt-get update && apt-get install -y python-software-properties software-properties-common
RUN add-apt-repository ppa:webupd8team/java

RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections

RUN apt-get update && apt-get install -y oracle-java8-installer maven git

RUN git clone https://github.com/santosh32/configuration-management-tools.git

WORKDIR /configuration-management-tools/java/sf-boot-mysql-sf-data-jpa-hibernate

RUN git pull

RUN ["mvn", "package"]

EXPOSE 8080

CMD ["mvn", "spring-boot:run"]

# mvn spring-boot:run -Dfork=true
# docker build -t java-mysql-link-ubuntu.image .

##### docker run -ti --rm -p 8080:8080 java-mysql-link-ubuntu.image
# docker run -d --name=linked-mysql --net=host --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_DATABASE=mydb" --env="MYSQL_USER=mydbuser" --env="MYSQL_PASSWORD=mydbpassword" --publish 3306:3306 mysql
# docker run -d --name=linked-mysql --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_DATABASE=mydb" --env="MYSQL_USER=mydbuser" --env="MYSQL_PASSWORD=mydbpassword" --publish 3306:3306 mysql

# docker run -d --name java-mysql-link --link linked-mysql:mysql java-mysql-link-ubuntu.image

# docker tag java-mysql-link-ubuntu.image santosh32/java-mysql-link-ubuntu.image
# docker push santosh32/java-mysql-link-ubuntu.image

# docker logs app-image