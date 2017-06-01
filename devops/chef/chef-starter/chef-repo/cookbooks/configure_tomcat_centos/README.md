# configure_tomcat_centos

TODO: Enter the cookbook description here.

vagrant global-status
vagrant destory 23fc123
    
vagrant init ubuntu/trusty64
vagrant up

chef generate cookbook configure_tomcat_centos
chef generate recipe . tomcat

berks install

kitchen converge
kitchen login
vagrant@localhost-:~$ sudo -i
root@localhost-:~$ service tomcat7 status

http://localhost:8080
http://192.168.33.33:8080

kitchen destroy (don't do 'vagrant destroy' this will corrupt the entire cookbooks )