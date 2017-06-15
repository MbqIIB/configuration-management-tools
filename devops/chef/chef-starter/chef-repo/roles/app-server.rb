name "app-server"
description "app-server configuration"
run_list "recipe[chef_server_conf::app-server]"
override_attributes({
})
