#
# Cookbook:: chef_multiphase_execution_app
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

['bacon', 'eggs', 'sausage'].each do |type|
  file "/tmp/#{type}" do
    content "#{type} is delicious!"
  end
end

#file '/tmp/bacon' do
#  content 'bacon is delicious!'
#end
#file '/tmp/eggs' do
#  content 'eggs is delicious!'
#end
#file '/tmp/sausage' do
#  content 'sausage is delicious!'
#end


free_memory = node['memory']['total']
file '/tmp/free' do
  contents "#{free_memory} bytes free on #{Time.now}"
end
