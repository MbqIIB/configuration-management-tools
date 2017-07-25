
file { 'testfile':
  path => '/tmp/testfile',
  ensure => present,
  mode => 0640,
  content => "I'm a test file.",
}

file { '/tmp/test1':
  ensure => present,
  content => "Hi.",
}

file { '/tmp/test2':
  ensure => directory,
  mode => 0644,
}

file { '/tmp/test3':
  ensure => link,
  target => '/tmp/test1',
}

 
# To validate
# puppet parser validate explore/manifests/file-resource.pp

# To run 
# puppet apply explore/manifests/file-resource.pp