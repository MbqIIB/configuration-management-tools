# configure_tomcat_ubuntu

TODO: Enter the cookbook description here.

vagrant global-status
vagrant destory 23fc123
    
vagrant init ubuntu/trusty64
vagrant up

chef generate cookbook configure_tomcat_ubuntu
chef generate recipe . tomcat

berks install

kitchen converge
kitchen login
vagrant@default-ubuntu-14.04:~$ sudo -i
root@default-ubuntu-14.04:~$ service tomcat7 status

http://localhost:8080
http://192.168.33.34:8080

kitchen destroy (don't do 'vagrant destroy' this will corrupt the entire cookbooks )