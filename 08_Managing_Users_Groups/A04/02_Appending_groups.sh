#Working on the alma system

#Add a new group named 'marketing' with root privileges
sudo groupadd marketing

#Add 'vagrant' user to 'marketing' group with root privileges
sudo usermod -G marketing vagrant

#Print the user identifier, group identifier, and groups for 'vagrant'
sudo id vagrant

#Add a new group named 'sales' with root privileges
sudo groupadd sales

#Add 'vagrant' user to 'sales' group with root privileges
sudo usermod -G sales vagrant

#Print the user identifier, group identifier, and groups for 'vagrant'
sudo id vagrant

#Append 'marketing' group to 'vagrant' user's existing groups with root privileges
sudo usermod -aG marketing vagrant

#Print the user identifier, group identifier, and groups for 'vagrant'
sudo id vagrant