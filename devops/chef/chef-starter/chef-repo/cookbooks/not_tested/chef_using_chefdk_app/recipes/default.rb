cookbook_file "/etc/hello" do
  source "hello"
  mode "0644"
end