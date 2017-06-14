name "demo"
description "An example Chef role"
run_list "recipe[chef_roles_app]"
override_attributes({
  "role" => "demonstration ??",
})
