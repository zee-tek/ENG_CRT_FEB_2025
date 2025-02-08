#!/bin/bash

ip_host=$(hostname -I)    #Storing Command OutPut into variable
host_name=$(hostname)     #Storing Command OutPut into variable
kernel_ver=$(uname -r)    #Storing Command OutPut into variable
up_time=$(uptime -p)      #Storing Command OutPut into variable


declare -A sys_report     # Defining Associate Array or dictionary
              
#dictionary_variable              key       value       key          value
sys_report=([sys_ip]=$ip_host [sys_host]=$host_name [sys_kernel]=$kernel_ver)
echo "HOSTNAME,IP_ADDR,KERNEL_VERSION" >>/tmp/system_report.csv 
echo "${sys_report[sys_host]},${sys_report[sys_ip]},${sys_report[sys_kernel]}">>/tmp/system_report.csv
