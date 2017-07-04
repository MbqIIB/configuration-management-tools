class apache2::install {
  
  case $operatingsystem {
    centos, redhat: { $package_name = 'httpd' }
    debian, ubuntu: { $package_name = 'apache2' }
    default: { fail("Unrecognized operating system for webserver") }
  }
  
  package { $package_name:
    ensure => installed,
  }
  
  service { $package_name:
    name    => $package_name,
    ensure  => true,
    enable  => true,
    require => Package[$package_name],
 }
 
}
