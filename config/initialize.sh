#!/bin/bash

# create input directory on HDFS
cd /usr/local/hadoop-2.7.2
bin/hdfs dfs -mkdir -p /root/hive
bin/hdfs dfs -mkdir -p /root/hive/warehouse
bin/hdfs dfs -chmod 777 /root/hive
bin/hdfs dfs -chmod 777 /root/hive/warehouse
echo -e "\n"

bin/hdfs dfs -mkdir /mr-history

bin/hdfs dfs -mkdir /stage

echo -e "\n"
echo -e "\n"

$HIVE_HOME/bin/schematool -initSchema -dbType mysql
