FROM ubuntu:14.04
MAINTAINER docker@devops.com

RUN apt-get update -y && apt-get install apache2 -y

EXPOSE 80

CMD ["echo", "Apache2 installed via ubuntu:14.04 Image !!!"]

# docker build -t apache2-ubuntu.image .
# docker run apache2-ubuntu.image
# docker run -i -t apache2-ubuntu.image /bin/bash
# service apache2 start 
# http://host-machine

# docker tag apache2-ubuntu.image santosh32/apache2-ubuntu.image
# docker push santosh32/apache2-ubuntu.image

# docker logs apache2-ubuntu.image