$ chef generate cookbook chef_using_chefdk_app

provisioner:
  name: chef_zero

suites:
  - name: default
  run_list:
    - recipe[chef_using_chefdk_app::default]
    
$ kitchen list
Instance          Driver   Provisioner Last Action
default-centos65  Vagrant  ChefZero    <Not Created>

$ chef generate file motd

(chef-client on server machiness)
$ kitchen converge default-centos65

$ kitchen login default-centos65

$ kitchen destroy default-centos65

