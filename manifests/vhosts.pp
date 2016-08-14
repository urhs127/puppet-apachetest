class apachetest::vhosts
{ 
   class { 'apache':
  default_vhost => false,
} 

    apache::vhost { 'puppetagent.apache.com.nonssl':
        servername      => '192.168.1.7',
        port            => '80',
        docroot         => '/var/www/html',
        redirect_status => 'permanent',
        redirect_dest   => 'https://192.168.1.7/'
    }

    apache::vhost { 'puppetagent.apache.com.ssl':
        servername => '192.168.1.7',
        port       => '443',
        docroot    => '/var/www/html',
        ssl        => true,
        ssl_cert   => '/etc/ssl/apache/www.example.com.cert',
        ssl_key    => '/etc/ssl/apache/www.example.com.key',
    }

}
