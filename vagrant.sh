#!/bin/bash

apt-get update 
apt-get upgrade -y
apt-get install openjdk-7-jdk wget curl vim zip unzip -y

if [[ ! -e /home/vagrant/titan ]] ; then
    wget http://s3.thinkaurelius.com/downloads/titan/titan-server-0.4.4.zip?jpg -O /home/vagrant/titan.zip -c
    cd /home/vagrant
    unzip titan.zip
    mv titan-server-0.4.4 titan
    wget http://repo1.maven.org/maven2/com/tinkerpop/rexster/rexster-kibbles/batch-kibble/2.5.0/batch-kibble-2.5.0.jar \
         -O /home/vagrant/titan/lib/batch-kibble-2.5.0.jar
    cp /vagrant/rexster-cassandra-es.xml /home/vagrant/titan/conf/rexster-cassandra-es.xml
    sed -i -e 's/localhost/192.168.50.8' /home/vagrant/titan/conf/rexster-cassandra-es.xml
    rm titan.zip
fi

chown vagrant /home/vagrant/titan -Rf

