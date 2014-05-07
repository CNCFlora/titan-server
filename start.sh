#!/bin/bash

cd /root/titan
bin/titan.sh -c cassandra-es start
tail -f /root/titan/log/rexstitan.log

