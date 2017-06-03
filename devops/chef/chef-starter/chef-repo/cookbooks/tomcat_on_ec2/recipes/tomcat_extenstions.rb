#
# Cookbook:: .
# Recipe:: tomcat_extenstions
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#template node['tomcat_on_ec2']['tomcatconfigfile'] do
 # source node['tomcat_on_ec2']['templatename']
  #action :create
  #notifies :restart, "service[#{ node['tomcat_on_ec2']['package_name']}]"
#end

additional_packages = node['tomcat_on_ec2']['additional_packages']
package additional_packages do
  action :install
  notifies :restart, "service[#{ node['tomcat_on_ec2']['package_name']}]"
end