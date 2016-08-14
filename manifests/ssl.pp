class apachetest::ssl {
openssl::export::pkcs12 { 'apache':
  ensure   => 'present',
  basedir  => '/etc/ssl/apache',
  pkey     => '/private.key',
  cert     => '/cert.crt',
  in_pass  => 'my_pkey_password',
  out_pass => 'my_pkcs12_password',
}
}
