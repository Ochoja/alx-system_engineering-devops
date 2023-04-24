# install flask from pip3
package { 'flask':
  require => Exec['pip3 install flask==2.1.0'],
}