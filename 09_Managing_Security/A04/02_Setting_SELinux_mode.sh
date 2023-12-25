#Working on alma

#Get the SELinux mode
getenforce

#Temporarily change the SELinux mode to Permissive (errors are logged but not prevented)
sudo setenforce Permissive

#Display the status of SELinux again to confirm the changes
sestatus

#Display the help for setenforce command
sudo setenforce --help

#Temporarily change the SELinux mode back to Enforcing (errors are logged and prevented)
sudo setenforce Enforcing

#Temporarily change the SELinux mode to Permissive using a numeric value (0 for Permissive, 1 for Enforcing)
sudo setenforce 0

#Display the status of SELinux again to confirm the changes
sestatus

#Change the SELinux mode to Enforcing using a numeric value (0 for Permissive, 1 for Enforcing)
sudo setenforce 1