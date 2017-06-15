name "db-server"
description "db-server configuration"
run_list "recipe[chef_server_conf::db-server]"
override_attributes({
})
