class helloworld::motd {

  file { '/tmp/hello':
     owner  => 'root',
     group  => 'root',
     mode    => '0644',
     content => "hello, world!\n",
     }
}
