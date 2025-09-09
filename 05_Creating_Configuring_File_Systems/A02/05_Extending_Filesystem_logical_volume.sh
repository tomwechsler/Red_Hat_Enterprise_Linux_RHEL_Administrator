#Working on the rhel system

#Switch to the root user
sudo -i

#Display information about all volume groups
vgs

#Display disk usage in human-readable format for all mounted filesystems
df -h /

#Extend the volume group 'rhel' by adding the physical volume /dev/sdc
vgeextend rl_rocky01 /dev/vdc

#Display information about the 'rhel' volume group
vgs rl_rocky01

#Extend the logical volume 'root' in the 'rhel' volume group to use all free space and resize the filesystem
lvextend -r -l +100%FREE rl_rocky01/root

#Display disk usage in human-readable format for all mounted filesystems to verify the extension
df -h /

#Display information about all volume groups again to verify the changes
vgs