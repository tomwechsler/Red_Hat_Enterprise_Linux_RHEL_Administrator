#Working on the rhel system

echo hello | tee file1

#To append
echo hello | tee -a file1


#Fails as redirection from shell 
sudo echo "1.0.0.1 cloudflare" >> /etc/hosts

#This will work don't forget the -a to append and not to overwrite
echo "1.0.0.1 cloudflare" | sudo tee -a /etc/hosts 

ping cloudflare

#List the line
tail -n 1 /etc/hosts


