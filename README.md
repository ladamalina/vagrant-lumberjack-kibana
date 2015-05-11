## What's inside

* CentOS 7 [vagrant box](https://atlas.hashicorp.com/puppetlabs/boxes/centos-7.0-64-puppet)

* Two VMs provisioned by Puppet:

	* A tiny application server with ruby, php and [Lumberjack](https://github.com/elastic/logstash-forwarder)

	* [Elasticsearch](https://www.elastic.co/products/elasticsearch) node, [Logstash](https://www.elastic.co/products/logstash) and [Kibana](https://www.elastic.co/products/kibana)

## Installation

```bash
$ vagrant up # installs both machines
```

## SSH Connection

Application VM contains Lumberjack and your app (like ruby, golang, php etc.):

```bash
$ vagrant ssh app # app is machine name, ip 192.168.16.101
```

Elasticsearch VM contains ES node, JVM and Logstash:

```bash
$ vagrant ssh es # es is machine name, ip 192.168.16.102
```

## Usage

Elasticsearch http interface **http://192.168.16.102:9200/**

Kibana URL is **http://192.168.16.102:5601/**
