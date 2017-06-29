class configure_httpd::httpd {
  
  package { 'httpd':
    ensure => installed,
  }

  service { 'httpd':
    ensure => running,
    enable => true,
    require => Package["httpd"],
  }
  
  file {'/etc/httpd/conf.d/myserver.conf':
    notify => Service["httpd"],
    ensure => file,
    require => Package["httpd"],
    content => template("configure_httpd/myserver.conf.erb"),
   }
   
   file { "/var/www/myserver":
    ensure => "directory",
   }
}