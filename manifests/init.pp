# == Class: boto
#
# This class install and configure python-boto
#
# === Parameters
#
# [*access_key*]
# AWS access key.
#
# [*secret_key*]
# AWS secret key.
#
# === Examples
#
#  class { boto:
#    access_key => "xxxxxxxxxx",
#    secret_key => "yyyyyyyyyy",
#  }
#
# === Authors
#
# Lorenzo Cocchi <lorenzo.cocchi@softecspa.it>

class boto (
  $access_key = $::aws_access_key,
  $secret_key = $::aws_secret_key,

) {

  if ( $access_key == '' ) {
    fail('Please specify access_key!')
  }

  if ( $secret_key == '' ) {
    fail('Please specify secret_key!')
  }

  include boto::install
  include boto::config

  Class['boto::install'] -> Class['boto::config']

}
