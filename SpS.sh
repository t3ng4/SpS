#!/bin/bash
#SimplePortScanner-SpS
echo "SimpePortScanner"
hostname=10.8.254.171     #target ip
for port in {1..65535};do
2>/dev/null echo > /dev/tcp/$hostname/$port
if [ $? == 0 ]
 then
 {
 echo " $port open"
 }
fi
done
