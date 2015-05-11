package { ['golang', 'git', 'ruby-devel']: 
  ensure => installed, 
  provider => yum 
}

package { 'logstash-forwarder':
  ensure => 'installed',
  source => 'https://download.elastic.co/logstash-forwarder/binaries/logstash-forwarder-0.4.0-1.x86_64.rpm',
  provider => 'rpm'
}

include ::php
