name "web-server"
description "web-server configuration"
run_list "recipe[chef_server_conf::web-server]"
default_attributes "chef_server_conf" => { "content" => "default_attributes = Please install webserver => apache2/nginx!" }
override_attributes "chef_server_conf" => { "content" => "override_attributes = Please install webserver => apache2/nginx!" }
