file '/tmp/role' do
  content "this is role ...#{node["role"]}"
end