  class apachetest (
  $apachename   = $::apachetest::params::apachename,
) inherits ::apache::params { 

  #package { 'apache2':
  #  name    => $apachename,
  #  ensure  => present,
  #}


#service { 'apache2':
#name => $apachename,
#  ensure => running,
#}

file { '/var/www/html/ubuntuserver.home':
path => '/var/www/html/ubuntuserver.home',
ensure => directory,
	}


file { "/var/www/html/index.html":
        ensure => "present",
        source => "puppet:///modules/apachetest/index.html",
        owner => "root",
        group => "root",
        mode => 644,
}


file { '/etc/ssl/apache':
path => '/etc/ssl/apache',
ensure => directory,
        }


}
