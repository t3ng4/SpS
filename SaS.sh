#!/bin/bash
#SimpleAliveScanner-SaS
echo "SimpleAliveScanner"
is_alive_ping()
{
  ping -c 1 -w 1 $1 > /dev/null
  [ $? -eq 0 ] && echo $t ,alive
}
for t in 10.8.254.{1..254} #adjust range
do
is_alive_ping $t & disown
done
