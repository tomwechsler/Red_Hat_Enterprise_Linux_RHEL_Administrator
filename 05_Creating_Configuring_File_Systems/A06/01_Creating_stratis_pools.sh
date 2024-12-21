#Working on the rhel system

sudo -i

#Install the Stratis daemon and CLI tools
dnf install stratisd stratis-cli

#Enable and start the Stratis daemon immediately
systemctl enable --now stratisd

#List all block devices
lsblk

#Create a Stratis pool named 'pool1' using the /dev/sdd device
stratis pool create pool1 /dev/sdd

#List all Stratis pools
stratis pool list