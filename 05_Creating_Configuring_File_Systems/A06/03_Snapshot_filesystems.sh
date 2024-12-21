#Working on the rhel system

sudo -i

#Find all HTML files in /usr/share/doc and copy them to /my/stratis
find /usr/share/doc -type f -name '*.html' -exec cp {} /my/stratis \;

#List the contents of the /my/stratis directory to verify the copied files
ls /my/stratis

#Create a directory named /backup
mkdir /backup

#Create a snapshot of the Stratis filesystem 'fs1' in the 'pool1' pool named 'snap1'
stratis filesystem snapshot pool1 fs1 snap1

#Mount the snapshot 'snap1' to the /backup directory
mount /dev/stratis/pool1/snap1 /backup

#List the contents of the /backup directory to verify the snapshot
ls /backup

#List the contents of the /my/stratis directory
ls /my/stratis

#Remove all files in /my/stratis that contain 'me' in their name
rm -f /my/stratis/*me*

#List the contents of the /my/stratis directory to verify the removal
ls /my/stratis

#Copy all files from /backup that contain 'me' in their name back to /my/stratis
cp /backup/*me* /my/stratis

#List the contents of the /my/stratis directory to verify the restoration
ls /my/stratis

#List all Stratis filesystems in the 'pool1' pool
stratis filesystem snapshot pool1

#Unmount the /backup directory
umount /backup

#Destroy the snapshot 'snap1' in the 'pool1' pool
stratis filesystem destroy pool1 snap1