#
# Cookbook:: chef_deploy_revision_app
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Clone and sync an application from revision control
deploy_revision '/opt/my_app' do
  repo 'git://github.com/username/app.git'
end
