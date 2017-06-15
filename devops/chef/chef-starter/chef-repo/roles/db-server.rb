name "db-server"
description "db-server configuration"
run_list "recipe[chef_server_conf::db-server]"
default_attributes "chef_server_conf" => { "content" => "default_attributes = Please install dbserver => mysql!" }
override_attributes "chef_server_conf" => { "content" => "override_attributes = Please install dbserver => mysql!" }