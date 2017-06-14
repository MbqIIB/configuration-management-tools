# chef_template_apache2_app

Create Vagrant Machine for Node
-
- vagrant init ubuntu/trusty64
- vagrant up
- vagrant ssh
vagrant@localhost > sudo -i
root@localhost > 

Run following command on where ever the .chef folder is present, and this one time activity
-
chef-repo> knife bootstrap 192.168.33.10 -x vagrant -P vagrant --sudo -N ubuntu.vagrant.com

cookbooks> chef generate cookbook chef_template_apache2_app
chef_template_apache2_app> chef generate template . index.html.erb
chef_template_apache2_app> knife cookbook upload chef_template_apache2_app

From Hosted Server -
-
1. select 'run_list' from node
2. add recipe like chef_template_apache2_app
3. save the run list
 3.1 root@vagrant-ubuntu-trusty-64:# service apache2 status
	 apache2: unrecognized service
4. run the 'chef-client' from terminal
	root@localhost > chef-client
	
	
=========================

Chef Development Kit:
-
	$ chef generate cookbook apache
	$ cd apache

Chef Client:
-
	$ knife cookbook create apache --cookbook-path .
	$ cd apache
	$ kitchen init --create-gemfile
	$ bundle install


$ kitchen converge default-centos65


Chef Development Kit:
-
	$ chef generate template index.html

Chef Client - Linux/Mac OS X:
-
	$ touch templates/default/index.html.erb

Chef Client - Windows:
-
	$ touch templates\default\index.html.erb

driver:
	network:
	  - ["private_network", {ip: "192.168.33.7"}]

$ kitchen converge default-centos65

$ kitchen login default-centos65
Last login: Thu Aug 14 13:52:00 2014 from 10.0.2.2
Welcome to your Packer-built virtual machine.

[vagrant@default-centos65 ~]$ more /var/www/html/index.html
This site was set up by default-centos65

[vagrant@default-centos65 ~]$ curl localhost
This site was set up by default-centos65

[vagrant@default-centos65 ~]$ exit

