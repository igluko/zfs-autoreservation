# zfs-autoreservation
This should protect important system datasets from a total lack of free space

./zfs-autoreservation [dataset_name] [number]

or
 
./zfs-autoreservation [dataset_name] [number%]

Example
```
root@pve:~/zfs-autoreservation# zfs get used,reservation  rpool/ROOT
NAME        PROPERTY     VALUE   SOURCE
rpool/ROOT  used         6.33G   -
rpool/ROOT  reservation   none   local

./zfs-autoreservation.sh rpool/ROOT 10%
size:   6796353536
reserv: 7475988889

NAME        PROPERTY     VALUE   SOURCE
rpool/ROOT  used         6.33G   -
rpool/ROOT  reservation  6.96G   local
```
  
  
