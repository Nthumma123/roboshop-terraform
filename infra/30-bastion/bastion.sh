#!/bin/bash

#sudo lsblk
#we are creating 50gb root disk but only 20gb partitioned
#remaining 30gb is unpartitioned and unformatted
#we need to extend the root partition and grow the file system to use the remaining 30
growpart /dev/nvme0n1 4
lvextned -r -L+30G /dev/mapper/Root-HomeVol 
xfs_growfs /home 

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform

