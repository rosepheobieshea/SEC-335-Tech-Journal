#!/bin/bash

echo "where do you want your output to go?"
read outputfile

for ip in $(seq 2 5);
do 
	sudo nmap -sn -vv -n 10.0.5.$ip | grep -B1 -i "host is up" | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' >> $outputfile
done

