class boto::install {

  package {
    'python-boto': ensure => present;
  }

}
