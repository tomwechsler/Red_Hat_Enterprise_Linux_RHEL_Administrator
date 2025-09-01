#Working on the rhel system in virtualbox (for RHEL 10 navigate down in this document)

#Boot Process
#1 - BIOS/UEFI => The system bios/uefi is used to start the system and locate the boot partition
#2 - GRUB => The boot loader in RHEL is GRUB and allows you to selevt the Linux jernel to load
#3 - Kernel => The kernel is loaded but prior to this the initialization ram dis is loaded to customize the boot process to your hardware

#Edit linux entry

#Remove 'rhgb' and 'quiet' from the kernel parameters and add 'rd.break enforcing=0' (press Ctrl + X to start)

#Remount the sysroot as read-write
switch_root#mount -o remount,rw /sysroot

#Change root into the sysroot
chroot /sysroot

#Set a new root password
passwd

#Create the /.autorelabel file to trigger SELinux relabeling on next boot
touch /.autorelabel

#Exit the chroot shell
exit

#Remount the sysroot as read-only
switch_root#mount -o remount,ro /sysroot

#Exit the emergency shell to continue booting
exit

#Login as root and if have not create the autorelabel file then
restorecon -v /etc/shadow

#Check the current SELinux status
getenforce

#Set SELinux to enforcing mode
setenforce 1

#On RHEL 10 use

#Boot Process
#1 - BIOS/UEFI => The system bios/uefi is used to start the system and locate the boot partition
#2 - GRUB => The boot loader in RHEL is GRUB and allows you to selevt the Linux jernel to load
#3 - Kernel => The kernel is loaded but prior to this the initialization ram dis is loaded to customize the boot process to your hardware

#Edit linux entry

#Remove 'rhgb' and 'quiet' from the kernel parameters and add init=/bin/bash (press Ctrl + X to start)

#Remount the root filesystem in read-write mode
mount -o remount,rw /

#Enter the passwd
passwd

#To relabel all files on next system boot
touch /.autorelabel

#Reboot the system
exec /sbin/init