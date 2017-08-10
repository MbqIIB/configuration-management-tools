FROM ubuntu:14.04
MAINTAINER docker@devops.com

RUN apt-get update -y && apt-get install apache2 -y

EXPOSE 80

CMD ["echo", "Hello World !!!"]

# docker build -t apache2-ubuntu.image .
# docker run apache2-ubuntu.image

# docker tag apache2-ubuntu.image santosh32/apache2-ubuntu.image
# docker push santosh32/apache2-ubuntu.image