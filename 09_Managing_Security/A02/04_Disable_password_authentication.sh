#Working on the rhel system

#Connect to the remote server at '192.168.56.108' using 'tom' user via SSH
ssh tom@192.168.56.108

#Check the SSH server configuration with root privileges
sudo sshd -T

#Check the SSH server configuration and filter for 'passwordauthentication' with root privileges
sudo sshd -T | grep -i passwordauthentication

#Open the SSH server configuration file in vim editor with root privileges
sudo vim /etc/ssh/sshd_config

#PasswordAuthentication no (remove the # and change the value to 'no')

#Check the SSH server configuration and filter for 'passwordauthentication' with root privileges
sudo sshd -T | grep -i passwordauthentication

exit

ssh -o PreferredAuthentications=none 192.168.56.108

ssh tom@192.168.56.108