#!/bin/bash

#sudo lsblk
growpart /dev/nvme0n1 4
lvextned -r -L+30G /dev/mapper/Root-HomeVol 
xfs_growfs /home 

