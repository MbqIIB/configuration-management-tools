if $is_virtual {
  service {'ntpd':
    ensure => stopped,
    enable => false,
   }
} else {
  service { 'ntpd':
    name => 'ntpd',
    ensure => running,
    enable => true,
    hasrestart => true,
    require => Package['ntp'],
  }
}


case $operatingsystem {
  centos: { $apache = "httpd" }
  # Note that these matches are case-insensitive.
  redhat: { $apache = "httpd" }
  debian: { $apache = "apache2" }
  ubuntu: { $apache = "apache2" }
  default: { fail("Unrecognized operating system for webserver") }
  # "fail" is a function. We'll get to those later.
}

package {'apache':
  name => $apache,
  ensure => latest,
}
