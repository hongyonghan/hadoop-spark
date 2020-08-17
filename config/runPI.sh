#!/bin/bash

echo -e "\n"

cd $SPARK_HOME

echo -e "\n"

bin/spark-submit \
--class org.apache.spark.examples.SparkPi \
--master spark://hadoop-master:7077 \
--executor-memory 1G \
--total-executor-cores 2 \
./examples/jars/spark-examples_2.11-2.1.1.jar \
100
