name "app-server"
description "app-server configuration"
run_list "recipe[chef_server_conf::app-server]"
default_attributes "chef_server_conf" => { "content" => "default_attributes = Please install appserver => tomcat7!" }
override_attributes "chef_server_conf" => { "content" => "override_attributes = Please install appserver => tomcat7!" }