#
# Cookbook:: .
# Recipe:: tomcat
#
# Copyright:: 2017, The Authors, All Rights Reserved.

case node['platform']
  when 'ubuntu', 'debian'
    apt_update
  when 'rhel', 'centos'
    execute 'yum update' do
      command 'yum -y update'
      action :run
    end
end

package_name = node['tomcat_on_ec2']['package_name']

package package_name do
  action :install
end

service package_name do
  action :start
end