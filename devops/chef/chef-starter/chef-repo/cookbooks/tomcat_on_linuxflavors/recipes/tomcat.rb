#
# Cookbook:: .
# Recipe:: tomcat
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package_name = node['tomcat_on_linuxflavors']['package_name']

package package_name do
  action :install
end

service package_name do
  action [:enable, :start]
end