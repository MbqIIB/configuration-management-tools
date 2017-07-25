class hierademo ( $package_name = hiera("package_name") ){
  notify {"HieraDemo's => $package_name":}
}
