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

package 'tomcat7' do
  action :install
end

service 'tomcat7' do
  action :start
end