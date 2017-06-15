name "web-server"
description "web-server configuration"
run_list "recipe[chef_server_conf_app::web-server]"
#env_run_lists "production" => ["recipe[chef_server_env_conf_app::web-server-prod]"], "testing" => ["recipe[chef_server_env_conf_app::web-server-dev]"]
default_attributes "chef_server_conf" => { "content" => "default_attributes = Please install webserver => apache2/nginx!" }
override_attributes "chef_server_conf" => { "content" => "override_attributes = Please install webserver => apache2/nginx!" }
