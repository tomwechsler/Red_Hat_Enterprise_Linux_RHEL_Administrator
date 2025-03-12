#Working on the rhel system

#Display the total disk usage of the /etc directory in a human-readable format
sudo du -sh /etc

#Create a tarball of the /etc directory named etc.tar
sudo tar -cf etc.tar /etc

#List detailed information about the etc.tar file
ls -lh etc.tar

#List the contents of the etc.tar file
sudo tar -tf etc.tar

#Extract the contents of the etc.tar file
sudo tar -xf etc.tar

#Change the current directory to etc
cd etc

#Print the current working directory
pwd

#List the contents of the etc directory
ls

#Change the current directory to the parent directory
cd ..

#Do NOT do this on a production system: Remove the /etc/hosts file
sudo rm /etc/hosts

#Change the current directory to the root directory
cd /

#Extract the /etc/hosts file from the etc.tar tarball located in the vagrant user's home directory
sudo tar -xf ~vagrant/etc.tar etc/hosts

#Display the contents of the /etc/hosts file to verify the restoration
cat /etc/hosts