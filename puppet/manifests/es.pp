class { 'elasticsearch': 
  java_install => true,
  package_url => 'https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.5.2.noarch.rpm',
}

elasticsearch::instance { 'es-01': }

class { 'logstash': 
  package_url => 'https://download.elastic.co/logstash/logstash/packages/centos/logstash-1.4.2-1_2c0f5a1.noarch.rpm',
}

class { 'firewall': }

firewall { '100 allow elasticsearch access':
  port   => [9200],
  proto  => tcp,
  action => accept,
}

firewall { '100 allow logstash access':
  port   => [5000],
  proto  => tcp,
  action => accept,
}

firewall { '100 allow kibana access':
  port   => [5601],
  proto  => tcp,
  action => accept,
}

class { 'nginx': }
