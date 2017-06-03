#
# Cookbook:: .
# Recipe:: deploy_archives
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#remote_file node['tomcat_on_ec2']['deploy_location'] do
 # source node['tomcat_on_ec2']['jenkins']
  #action :create
  #notifies :restart, "service[#{node['tomcat_on_ec2']['package_name']}]"
#end