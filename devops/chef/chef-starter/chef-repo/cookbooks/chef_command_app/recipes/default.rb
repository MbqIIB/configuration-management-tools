#
# Cookbook:: chef_command_app
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# 'directory' Recursively ensure a directory exists
directory '/opt/my/deep/directory' do
  owner 'root'
  group 'root'
  mode '0644'
  recursive true
end

# 'execute' Write contents to a file
execute 'write status' do
  command 'echo "delicious" > /tmp/bacon'
end

# 'file' Delete the /tmp/bacon file
file '/tmp/bacon' do
  action :delete
end

# 'gem_package' Install bundler to manage dependencies
# gem_package 'bundler'

# 'group' Create the bacon group
# group 'bacon'

# Create the bacon user
# user 'bacon'

# Link /tmp/bacon to /tmp/delicious
link '/tmp/bacon' do
  to '/tmp/delicious'
end

# Mount /dev/sda8
# mount '/dev/sda8'

# Install the apache2 package (on Debian-based systems)
# package 'apache2'

# 'remote_file' Download a remote file to /tmp/bacon
remote_file '/tmp/bacon' do
  source 'http://bacon.org/bits.tar.gz'
end

