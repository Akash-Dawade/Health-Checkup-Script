#!/bin/bash 

#shibang 

##############################################
# Author - Akash Dawade
# Date - 04-10-2025
# purpose - To get the machine health
##############################################

echo "Below is the current processes status"

top 

echo "Below is the storage status"

free -h

echo "Below is the status to check which directory has how much storage"

df -h 

echo "Below is the processor count"

nproc

echo "Below are the I/O state per disk"

iostat -xz 2
