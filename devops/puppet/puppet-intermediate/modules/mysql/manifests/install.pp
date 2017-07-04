class mysql::install (root_password => 'default_value', port  => '3306',) {
  
  package { 'mysql-server':
    ensure => present,
  }
  
  service { 'mysql':
    ensure    => running,
  }
}
