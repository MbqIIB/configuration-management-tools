node 'vagrant-puppet-agent' {
  
  $package_name = 'apache2'
  include apache2
}
