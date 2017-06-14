#
# Cookbook:: chef_deploy_revision_app
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

deploy_revision '/opt/my_app' do
  repo 'https://github.com/santosh32/spring-app-with-jenkins.git'
end
