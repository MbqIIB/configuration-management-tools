directory '/tmp/webserver' do
  owner 'root'
  group 'root'
  mode '0644'
  recursive true
end

file '/tmp/webserver/setup' do
  content "This content from #{node['chef_server_conf_app']['content']}"
end
