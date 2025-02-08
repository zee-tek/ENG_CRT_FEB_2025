#!/bin/bash

servers=("192.168.1.40" "192.168.1.48" "192.168.1.45")

echo
echo -e "=============================================="
echo          "      Checking Systems Connectivity  "
echo -e "==============================================\n"
for server_ip in "${servers[@]}";do

    ping -c3 $server_ip &> /dev/null
   
    if [ $? -eq 0 ];then
       echo "$server_ip  Successful"
    else
       echo -e "$server_ip  Failed\n"
    fi


done
