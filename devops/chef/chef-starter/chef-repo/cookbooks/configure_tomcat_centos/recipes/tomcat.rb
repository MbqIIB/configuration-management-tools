#
# Cookbook:: .
# Recipe:: tomcat
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'tomcat' do
  action :install
end

service 'tomcat' do
  action :start
end