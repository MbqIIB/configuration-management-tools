file {'/tmp/test1':
  ensure => present,
  content => "Hi.",
  before => Notify['/tmp/test1 has already been synced.'],
  # (See what I meant about symbolic titles being a good idea?)
}

notify {'/tmp/test1 has already been synced.':}
  
  
file {'/tmp/test1':
  ensure => present,
  content => "Hi.",
}
notify {'after':
  message => '/tmp/test1 has already been synced.',
}

File['/tmp/test1'] -> Notify['after']

