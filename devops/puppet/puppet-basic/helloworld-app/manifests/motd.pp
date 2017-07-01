class app::motd {

  file { '/tmp/motd':
     owner  => 'root',
     group  => 'root',
     mode    => '0644',
     content => "hello, world!\n",
     }
}
