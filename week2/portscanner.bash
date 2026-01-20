#!/bin/bash

echo "Please provide a list of desired hosts to scan..."
read hostfile

echo "Please provide a list of desired ports to scan..."
read portfile

echo "Please provide an output destination"
read destination

echo "host,port"
for host in $(cat $hostfile); do
	for port in $(cat $portfile); do
	  timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null &&
		  echo "$host, $port" >> $destination
	  done
  done

