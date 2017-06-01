#
# Cookbook:: .
# Recipe:: tomcat
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'tomcat7' do
  action :install
end

service 'tomcat7' do
  action :start
end
