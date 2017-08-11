FROM ubuntu:14.04

RUN apt-get update && apt-get install -y git

WORKDIR /devops-lookup/sf-mvc-json-response-java-config

RUN git clone https://github.com/santosh32/devops-lookup.git

CMD ["echo", "Hello World !!!"]

# docker build -t git-ubuntu.image .
# docker run git-ubuntu.image
# docker run -i -t git-ubuntu.image /bin/bash
# http://host-machine

# docker tag git-ubuntu.image santosh32/git-ubuntu.image
# docker push santosh32/git-ubuntu.image