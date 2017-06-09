$ knife cookbook create chef_using_chef-client_app --cookbook-path .

$ kitchen init --create-gemfile
$ bundle install

provisioner:
  name: chef_solo

suites:
  - name: default
  run_list:
    - recipe[chef_using_chef-client_app::default]
    
$ kitchen list
Instance         Driver  Provisioner Last Action
default-centos65 Vagrant ChefSolo    <Not Created>

$ kitchen converge default-centos65

$ kitchen login default-centos65

$ kitchen destroy default-centos65