#!/bin/bash

echo -e "\n"

$HADOOP_HOME/sbin/start-dfs.sh

echo -e "\n"

$HADOOP_HOME/sbin/start-yarn.sh

echo -e "\n"

cd $HADOOP_HOME

echo -e "\n"

bin/hadoop fs -mkdir /directory

echo -e "\n"
cd $SPARK_HOME

echo -e "\n"
cd /usr/local/spark-2.1.1-bin-hadoop2.7
sbin/start-all.sh

echo -e "\n"

sbin/start-history-server.sh

