# chef_command_app

TODO: Enter the cookbook description here.

Create Vagrant Machine for Node
-
- vagrant init ubuntu/trusty64
- vagrant up
- vagrant ssh
vagrant@localhost > sudo -i
root@localhost > 

# run following command on where ever the .chef folder is present
chef-repo> knife bootstrap 192.168.33.10 -x vagrant -P vagrant --sudo -N ubuntu.vagrant.com

chef_command_app> knife cookbook upload chef_command_app

From Hosted Server -
-
1. select 'run_list' from node
2. add recipe like chef_command_app
3. save the run list
4. run the 'chef-client' from terminal
	root@localhost > chef-client

