# execute 'apt-get update'
exec { 'apt-update':                    # exec resource named 'apt-update'
  command => '/usr/bin/apt-get update'  # command this resource will run
}

# install Python3
package { 'flask':
  ensure  => 'installed',
  require => Exec['apt install python3.8.10'],
}

# install flask from pip3
package { 'flask':
  ensure  => 'installed',
  require => Exec['pip3 install flask==2.1.0'],
}

# install flask from pip3
package { 'Werkzeug':
  ensure  => 'installed',
  require => Exec['pip3 install Werkzeug==2.1.1'],
}