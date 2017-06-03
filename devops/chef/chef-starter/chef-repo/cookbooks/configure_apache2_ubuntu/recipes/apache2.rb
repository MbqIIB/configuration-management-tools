#
# Cookbook:: .
# Recipe:: apache2
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package_name = node['configure_apache2_ubuntu']['package_name']

package package_name do
  action :install
end

service package_name do
  action :start
end