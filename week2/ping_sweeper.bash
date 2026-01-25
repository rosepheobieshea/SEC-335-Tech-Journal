#!/bin/bash

echo "hello, where do you want your ip addresses outputted?"
read outputfile

for ip in $(seq 2 50);
do ping -c1 -w1 10.0.5.$ip | grep "64 bytes" | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' >> $outputfile
done
