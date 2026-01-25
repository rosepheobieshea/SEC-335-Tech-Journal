#!/bin/bash

echo "where do you want your output to go?"
read outputfile

for ip in $(seq 2 50);
do fping --backoff=1.1 10.0.5.$ip | grep "is alive" | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' >> $outputfile
done

