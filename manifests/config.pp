class boto::config {

  file { '/root/.boto':
    ensure  => present,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
    content => template('boto/boto.erb'),
  }

}
