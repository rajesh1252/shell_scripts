#!/bin/bash
usg=$(df -h | awk '+$5 >= 8 {print $1,$5}' | wc -l)
if (( $usg >> 0 ))
 then 
   usg1=$(df -h | awk '+$5 >= 8 {print $1,$5}')
   echo -e "Alert: disk usage more  \n$usg1"
   else 
   echo "no disks with high usage"
 fi
