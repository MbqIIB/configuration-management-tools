#
# Cookbook:: chef_restart_command_app
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
service 'apache2' do
  restart_command '/etc/init.d/apache2 restart'
end