class hierademo ( $package_name = hiera("package_name") ){
  notify {"So am I! $package_name":}
}
