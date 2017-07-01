
file {'testfile':
  path => '/tmp/testfile',
  ensure => present,
  mode => 0640,
  content => "I'm a test file.",
}

file {'/tmp/test1':
  ensure => present,
  content => "Hi.",
}

file {'/tmp/test2':
  ensure => directory,
  mode => 0644,
}

file {'/tmp/test3':
  ensure => link,
  target => '/tmp/test1',
}

notify {"I'm notifying you.":} # Whitespace is fungible, remember.
notify {"So am I!":}


notify {'bignotify':
  message => "I'm completely enormous, and will mess up the formatting of your code! Also, since I need to fire before some other resource, you'll need
              to refer to me by title later using the Notify['title'] syntax, and you really don't want to have to type this all over again.",
}
  
  
  
  
  

# to run this use 
# puppet apply basic_file_commands.pp