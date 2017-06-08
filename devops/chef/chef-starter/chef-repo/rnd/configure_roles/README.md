- chef-zero --port 9501

- knife upload nodes -- fake nodes
	- Created nodes/snowman.json
	- Created nodes/atwood.json
	- Created nodes/susu.json

- knife role from file webserver.json
- knife role show webserver

- knife node run_list set snowman "role[webserver]"

- knife role from file base.json
- knife role show base

- knife search role "run_list:recipe\[apache\]"
- knife search node "recipe:apache"
