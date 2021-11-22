# zfs-autoreservation
This should protect important system datasets from a total lack of free space.

The second parameter can be a number of bytes or the number of percent to be added to the current dataset size to get the value for the reserve.

./zfs-autoreservation [dataset_name] [number]

or
 
./zfs-autoreservation [dataset_name] [number%]

Example
```
zfs get used,reservation  rpool/ROOT
NAME        PROPERTY     VALUE   SOURCE
rpool/ROOT  used         6.33G   -
rpool/ROOT  reservation   none   local

./zfs-autoreservation.sh rpool/ROOT 10%
size:   6796353536
reserv: 7475988889

zfs get used,reservation  rpool/ROOT
NAME        PROPERTY     VALUE   SOURCE
rpool/ROOT  used         6.33G   -
rpool/ROOT  reservation  6.96G   local
```
  
  
