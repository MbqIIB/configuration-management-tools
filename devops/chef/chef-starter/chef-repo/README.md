- client-side Chef
	• Test Kitchen
	• Chef Solo/Chef Local
	• Cookbooks
	
- Chef Server
	• On-Premises Chef Server
	• Chef Zero
	• Roles, Data Bags, and Environments
	• Knife

- ruby - rvm, rbenv, or chruby

Chef tool to install: Chef Development Kit or Chef Client
--------------------------------------------------------

Chef Client versus Chef Development Kit
-----------------------------------------
Chef Client (also known as the Chef Omnibus Installer) contains the core components of Chef needed to manage a server or workstation. The installer comprises the entire
collection of things necessary to run Chef; thus, it is an omnibus installer. Chef Client bundles core application scripts along with the necessary Ruby scripting engine. In
production environments, Chef Client is installed on every system intended to be managed by Chef.

The Chef Development Kit is a superset of Chef Client. If you install the Chef Development Kit, there is no need to install the Chef Client. Chef Development Kit includes
all the components of Chef Client, plus the Chef Development Kit additional best-of-breed tools developed by the Chef community, in one package. Several community developed
tools have become part of the standard Chef development workflow for many, so now they are bundled together into an officially supported Chef product.

Chef Development Kit installer will automatically install Chef and Ruby in the /opt/chefdk/embedded directory
If it was necessary to choose the Chef Client installation instead, the Chef and Ruby installation will be located under /opt/chef/embedded.

Linux
-	
Chef Development Kit installation:
- $ which ruby
- /opt/chefdk/embedded/bin/ruby
Chef Client installation:
- $ which ruby
- /opt/chef/embedded/bin/ruby

$ ls /opt/chefdk/bin
berks chef-service-manager fauxhai nokogiri ruby-rewrite chef chef-shell foodcritic ohai shef 
chef-apply chef-solo kitchen rubocop tt chef-client chef-vault knife ruby-parse

$ ls /opt/chef/bin
chef-apply chef-service-manager chef-solo erubis ohai restclient chef-client chef-shell cher-zero knife rackup shef

- $ chef-client --version
Chef: 11.14.6

windows
-
Chef Development Kit installation—Windows Command Prompt:
> where ruby
C:\opscode\chefdk\embedded\bin\ruby.exe

Chef Development Kit installation—Windows PowerShell:
PS> (get-command ruby).path
C:\opscode\chefdk\embedded\bin\ruby.exe
Chef Client installation—Windows Command Prompt:
> where ruby
C:\opscode\chef\embedded\bin\ruby.exe

chef-client --version
Chef: 11.14.6


Install Test Kitchen on Linux (Chef Client Only)
-
We’ll be using Test Kitchen to create virtualized sandbox environments in some of the hands-on exercise. The Chef Client installer does not install Test Kitchen, so you’ll need
to install it manually.

You need to install the test-kitchen gem. A gem is a supporting library or application written in Ruby. You can think of a gem as the equivalent of an installer for Ruby.
Rubygems.org maintains a central registry of Ruby gems on the Internet. Run the gem install command as root to install the test-kitchen gem. The additional --no-ri and --no-rdoc parameters save time by omitting the step that generates documentation:

linux
-
- $ sudo gem install test-kitchen --no-ri --no-rdoc
- $ gem env
- $ gem list test-kitchen -i
true

windows
-
> gem install test-kitchen --no-ri --no-rdoc
> gem env
> gem list test-kitchen -i
true

Generate the Cookbook Skeleton
-
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









	