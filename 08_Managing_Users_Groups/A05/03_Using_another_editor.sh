#Working on the alma system

#Open the sudoers file in the default editor with root privileges
sudo visudo

#Change the default editor to 'nano'
export EDITOR=nano

#Open the 'defaults' file in the 'nano' editor with root privileges
sudo visudo -f /etc/sudoers.d/defaults

#Add a new line to the 'defaults' file to keep the 'EDITOR' environment variable
Defaults env_keep += "EDITOR"

#Open the sudoers file in the 'nano' editor with root privileges
sudo visudo