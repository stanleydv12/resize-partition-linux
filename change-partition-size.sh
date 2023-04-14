#!/bin/bash

clear
echo "NOTE: Resize the VM Disk First in Proxmox VE !!"
echo "Press enter to continue !!"
read

lsblk
echo ""

echo "===== Example for sda1 -> sda ====="
read -p "Choose partition name : " partname
echo "===== Example for sda1 -> 1 ====="
read -p "Choose partition number : " partnumber
echo ""

growpart /dev/$partname $partnumber
pvresize /dev/$partname$partnumber

echo ""
echo "List file in /dev/mapper/"

ls /dev/mapper/

echo ""
echo "===== Example -> ubuntu--vg-root ====="
read -p "Input Logical Volume : " lvolume

lvextend -r -l +100%FREE /dev/mapper/$lvolume

echo ""
echo "Success !!"
