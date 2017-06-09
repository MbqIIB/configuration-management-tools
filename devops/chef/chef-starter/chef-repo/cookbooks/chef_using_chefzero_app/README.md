- $ sudo gem install chef-zero --no-ri --no-rdoc

Chef Development Kit:
-
 - $ chef generate cookbook zero
 - $ cd zero

Chef Client:
-
- $ knife cookbook create zero --cookbook-path .
- $ cd zero
- $ kitchen init --create-gemfile
- $ bundle install

provisioner:
  name: chef_zero

$ kitchen converge

--------------------------------------------

$ mkdir .chef
$ cd .chef

Linux/Mac OS X/Windows Command Prompt:
-
- $ ssh-keygen -f devhost.pem -P ""
- $ ssh-keygen -f validation.pem -P ""

Windows PowerShell:
- 
- $ ssh-keygen --% -f devhost.pem -P ""
- $ ssh-keygen --% -f validation.pem -P ""

- $ chef-zero --port 9501

- $ knife client list
- $ knife client list --local-mode

- $ pwd
 - /Users/misheska/chef-playground

- $ knife upload nodes
  	Created nodes/atwood.json
	Created nodes/snowman.json
	Created nodes/susu.json

