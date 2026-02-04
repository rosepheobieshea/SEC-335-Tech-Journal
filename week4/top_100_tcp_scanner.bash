#!/bin/bash

echo "port file?"
read port_file

for port in $(cat $port_file):
do
	sudo nmap -sV -p $port
done
