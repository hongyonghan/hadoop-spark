#!/bin/bash

# the default node number is 3
N=${1:-3}


# rm hadoop master container
sudo docker rm -f hadoop-master &> /dev/null
echo "delete hadoop-master container..."

# rm hadoop slave container
i=1
while [ $i -lt $N ]
do
	sudo docker rm -f hadoop-slave$i &> /dev/null
	echo "delete hadoop-slave$i container..."
	i=$(( $i + 1 ))
done 
