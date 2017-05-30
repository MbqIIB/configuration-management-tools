#
# Cookbook:: tomcat_vagrant_cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'tomcat7' do
  action :install
end

package 'tree' do
  action :install
end