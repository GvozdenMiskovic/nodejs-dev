class nodejs_dev::nodejs_install ($manage_repo = true, $user) {

  class {'nodejs': manage_repo => $manage_repo }

  package { 'express':
    ensure   => '>= 4.0',
    provider => 'npm',
    require => Class['nodejs'],
  }
  ->
  package { 'express-generator':
    ensure   => 'present',
    provider => 'npm',
  }
}
