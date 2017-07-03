class apache2::configure($package_name) {
  
  package { $package_name:
    ensure => installed,
  }
  
  service { $package_name:
    ensure  => true,
    enable  => true,
    require => Package[$package_name],
 }
 
}
