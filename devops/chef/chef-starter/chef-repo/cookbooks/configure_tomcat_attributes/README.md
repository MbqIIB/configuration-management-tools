# configure_tomcat_attributes

TODO: Enter the cookbook description here.

- chef generate cookbook configure_tomcat_attributes

- chef generate recipe . tomcat
- chef generate attribute . tomcat // this will override the existing attributes/default.rb

- vagrant global-status 

- kitchen converge
- kitchen login

- sudo -i 
- root>service tomcat7 status
=>unreconized service command

---------------------------------------------
then uncomment the run_list for tomcat installation

- kitchen converge
- kitchen login

- sudo -i 
- root>service tomcat7 status
=>Tomcat servlet engine is running with pid 5848

