#!/bin/bash
filename=$1
i=1
n=1
while :
do
while read line; do
echo -e "\e[39m---------------------------------------------------"
echo -e "\e[32mSending GET request using"
echo -e "\e[37m "
echo "Proxy number $n : $line"
echo -e "\e[92m "
curl -x $line -m 2.37 -H "User-Agent: Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1" $2
n=$((n+1))
done < $filename
done
