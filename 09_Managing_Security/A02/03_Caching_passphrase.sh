#Working on the rhel system

#Connect to the remote server at '192.168.56.108' using 'tom' user via SSH
ssh tom@192.168.56.108

#Interrupt the current command (ctrl + c)

#Start the ssh-agent in the background
eval $(ssh-agent)

#Add your SSH private key to the ssh-agent
ssh-add

#Connect to the remote server at '192.168.56.108' using 'tom' user via SSH
ssh tom@192.168.56.108

#Exit the SSH session
exit

#Connect to the remote server at '192.168.56.108' using 'tom' user via SSH
ssh tom@192.168.56.108

#Exit the SSH session
exit

#Open the 'config' file in the '.ssh' directory in vim editor
vim .ssh/config

Host * 
  IdentityFile ~/.ssh/id_rsa 
  ServerAliveInterval 300
  ServerAliveCountMax 2
Host remote 
  Hostname 192.168.56.108 
  User tom

#Save and exit

#Connect to the remote server at 'remote' using 'tom' user via SSH
ssh tom@remote

#Change the permissions of the 'config' file in the '.ssh' directory to 600 (read and write for owner, no permissions for others) with verbose output
chmod 600 -v /home/tom/.ssh/config

#Connect to the remote server at 'remote' using 'tom' user via SSH
ssh tom@remote

#Exit the SSH session
exit