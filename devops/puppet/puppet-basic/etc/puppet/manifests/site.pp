#hiera_include('classes', '')

node 'vagrant-puppet-agent' {
  # include hello
  include hieradata
  
}
