# Install Flask with puppet

package { 'python3-pip':
  ensure => 'installed',
}

exec { 'install-flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin'],
  creates => '/usr/local/lib/python3.8/dist-packages/flask',
}
