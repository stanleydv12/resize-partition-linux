# Resize Partition Linux

Shell script for Linux VM in Proxmox VE to resize partition 


## Background

When resizing a new partition on the Linux environment, there are some requirements like resizing physical volume & logical volume. There are 3 different commands that need to be executed to achieve the goal.
## Solution

Create a shell script to help server administrators extend partition and take all of the free space using prompt.


## Usage/Examples

Use this command to give execute permission
```
chmod +x change-partition-size.sh
```

Use this command to execute the file (Sudo previlege required)
```
sudo bash change-partition-size.sh
```
