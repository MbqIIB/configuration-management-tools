class apache2::configure {
  
  case $operatingsystem {
    centos, redhat: { $package_name = 'httpd' }
    debian, ubuntu: { $package_name = 'apache2' }
  }
  
  package { 'apache2':
    ensure => installed,
  }
  
  service { 'apache2':
    name    => $package_name
    ensure  => true,
    enable  => true,
    require => Package[$package_name],
 }
 
}
