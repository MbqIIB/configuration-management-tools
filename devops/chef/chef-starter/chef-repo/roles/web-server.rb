name "web-server"
description "web-server configuration"
run_list "recipe[chef_server_conf::web-server]"
override_attributes({
})
