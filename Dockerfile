FROM ubuntu:14.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install openjdk-7-jdk wget curl zip unzip -y

RUN wget http://s3.thinkaurelius.com/downloads/titan/titan-server-0.4.4.zip?jpg -O /root/titan.zip
RUN cd /root && unzip titan.zip && mv titan-server-0.4.4 titan && rm titan.zip
RUN wget http://repo1.maven.org/maven2/com/tinkerpop/rexster/rexster-kibbles/batch-kibble/2.5.0/batch-kibble-2.5.0.jar \
        -O /root/titan/lib/batch-kibble-2.5.0.jar
ADD rexster-cassandra-es.xml /root/titan/conf/rexster-cassandra-es.xml

EXPOSE 8182

CMD ["/root/start.sh"]

