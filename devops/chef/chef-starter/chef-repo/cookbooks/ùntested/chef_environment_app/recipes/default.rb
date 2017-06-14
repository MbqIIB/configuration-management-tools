#
# Cookbook:: chef_environment_app
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "motd"
include_recipe "user"
include_recipe "apache"
