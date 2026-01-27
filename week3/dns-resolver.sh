#!/bin/bash

echo "please provide a /24 network prefix to scan, for example '10.0.5.'"
read prefix

echo "please provide a DNS server to preform the lookup"
read dnssrv

echo "dns resolution for $prefix"

for ip in $(seq 1 254);
do
#	echo "testing $prefix$ip"
	nslookup $prefix$ip $dnssrv | grep name
done
