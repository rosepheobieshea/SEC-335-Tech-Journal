#!/bin/bash

echo "please specify a /24 network prefix, such as '10.0.5.'"
read prefix

echo "ip, port"
for ip in $(seq 1 254);
do
	timeout .1 bash -c "echo >/dev/tcp/$prefix$ip/53" 2>/dev/null && echo "10.0.5.$ip, 53"
done
