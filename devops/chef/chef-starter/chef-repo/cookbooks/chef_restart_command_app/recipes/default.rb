#
# Cookbook:: chef_restart_command_app
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

template '/etc/resolv.conf' do
  source 'my_resolv.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

package 'ntp' do
  action :upgrade
end

service 'apache2' do
  restart_command '/etc/init.d/apache2 restart'
end

