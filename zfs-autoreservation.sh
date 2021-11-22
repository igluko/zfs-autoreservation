#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

size=`/usr/sbin/zfs get used $1 -o value -H -p`

if [[ $2 =~ "%" ]]; then
  
  reserv=`echo "scale=0; $size*(100+${2//%})/100" | bc`
else
  reserv=`echo "scale=0; $size+$2" | bc`
fi

#echo "size:   $size"
#echo "reserv: $reserv"

`/usr/sbin/zfs set reservation="$reserv" $1`
