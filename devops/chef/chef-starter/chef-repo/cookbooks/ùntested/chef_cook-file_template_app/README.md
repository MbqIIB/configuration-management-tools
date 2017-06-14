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
