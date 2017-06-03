# tomcat_on_linuxflavors

TODO: Enter the cookbook description here.
- chef generate cookbook tomcat_on_linuxflavors

- chef generate recipe . tomcat
- chef generate attribute . tomcat // this will override the existing attributes/default.rb

- vagrant global-status
- vagrant destroy 1ab23c4d 

- kitchen converge
- kitchen login ubuntu

- sudo -i 
- root@ubuntu>service tomcat7 status


---------------------------------------------
then uncomment the run_list for tomcat installation

- kitchen converge
- kitchen login centos

- sudo -i 
- root@centos>service tomcat status
=>Tomcat servlet engine is running with pid 5848
