name "web-server-env"
description "web-server-env configuration"
default_attributes "chef_server_conf_app" => { "content" => "environment (default_attributes) install webserver apache2/nginx!" }
override_attributes "chef_server_conf_app" => { "content" => " again changed environment (override_attributes) install webserver apache2/nginx!" }

