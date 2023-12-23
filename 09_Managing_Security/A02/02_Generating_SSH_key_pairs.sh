#Working on the rhel system

#List the contents of the '.ssh' directory
ls .ssh

#Display the contents of the 'authorized_keys' file in the '.ssh' directory
cat .ssh/authorized_keys

#Connect to the remote server at '192.168.56.108' using 'tom' user via SSH
ssh tom@192.168.56.108

#Exit the SSH session
exit

#List the contents of the '.ssh' directory
ls .ssh

#Generate a new SSH key pair, the '-t' option allows to specify the type of key to create
ssh-keygen -t TABTAB
ssh-keygen

#List the contents of the '.ssh' directory after generating the key pair
ls .ssh

#Copy the public key to the remote server at '192.168.56.108' using 'tom' user
ssh-copy-id -i .ssh/id_rsa.pub tom@192.168.56.108

#Connect to the remote server at '192.168.56.108' using 'tom' user via SSH
ssh tom@192.168.56.108

#Display the contents of the 'authorized_keys' file in the '.ssh' directory on the remote server
cat .ssh/authorized_keys

#Exit the SSH session
exit