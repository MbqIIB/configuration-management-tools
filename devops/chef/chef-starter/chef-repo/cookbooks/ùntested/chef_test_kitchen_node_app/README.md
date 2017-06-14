$ mkdir node
$ cd node

$ kitchen init --create-gemfile
$ bundle install

$ kitchen create default-centos65

$ kitchen login default-centos65

[vagrant@default-centos65 ~]$ chef-client --version
-bash: chef-client: command not found

[vagrant@default-centos65 ~]$ exit
logout
Connection to 127.0.0.1 closed.

$ kitchen setup default-centos65

$ kitchen list
Instance         Driver  Provisioner Last Action
default-centos65 Vagrant ChefSolo    Set Up

$ kitchen login default-centos65
Last login: Sat Jul 5 09:15:07 2014 from 10.0.2.2
Welcome to your Packer-built virtual machine.

[vagrant@default-centos65 ~]$ chef-client --version
Chef: 11.14.6

[vagrant@default-centos65 ~]$ echo 'log "Hello, this is an important message."' > hello.rb

[vagrant@default-centos65 node]$ chef-client --local-mode hello.rb

[vagrant@default-centos65 learningchef]$ chef-client --local-mode hello.rb --log_level info


Chef Client Modes
-
Chef Client can operate in one of three modes:
• Local mode - chef-zero (in-memory)
• Client mode - production running environment chef-client
• Solo mode - chef-solo (older version and before chef-zero create in-memory or similar environment like production env using chef-solo )


