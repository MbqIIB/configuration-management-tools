#
# Cookbook:: .
# Recipe:: tomcat
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package_name = node['configure_tomcat_attributes']['package_name']

package package_name do
  action :install
end

service package_name do
  action :start
end