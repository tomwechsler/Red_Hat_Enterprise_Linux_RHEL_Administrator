#Working on alma

#Check the remote system
ssh -o PreferredAuthentications=none 192.168.56.102

#Check the remote system
ssh -o PreferredAuthentications=none 192.168.56.108

#Check itself
ssh -o PreferredAuthentications=none 192.168.56.101

#Create a password for the vagrant account (if needed)
sudo passwd vagrant