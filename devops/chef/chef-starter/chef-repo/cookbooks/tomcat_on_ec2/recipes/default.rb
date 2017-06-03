#
# Cookbook:: tomcat_on_ec2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'tomcat_on_ec2::tomcat'
include_recipe 'tomcat_on_ec2::tomcat_extenstions'
include_recipe 'tomcat_on_ec2::deploy_archives'