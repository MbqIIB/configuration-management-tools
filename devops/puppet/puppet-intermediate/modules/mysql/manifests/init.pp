class mysql {
  
  # include install
  
  class { 'install':
    root_password => 'my_value',
    port          => '3307',
  }
}
