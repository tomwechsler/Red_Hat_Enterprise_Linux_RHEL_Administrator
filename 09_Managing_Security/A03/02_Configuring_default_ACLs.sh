#Working on the alma system

#Install the 'httpd' package using dnf package manager with root privileges
sudo dnf install httpd

#List the permissions of the '/var/www/html' directory
ls -ld /var/www/html

#Get the 'apache' user entry from the passwd database
getent passwd apache

#Get the 'apache' group entry from the group database
getent group apache

#Switch to the root user and simulate a full login shell
sudo -i

#Create a new file named 'file1' in the '/var/www/html' directory
touch /var/www/html/file1

#List the permissions of the 'file1' file in the '/var/www/html' directory
ls -l /var/www/html/file1

#Set the default ACL for the '/var/www/html' directory to give 'apache' user read permission and deny all permissions for others
setfacl -m d:u:apache:r,d:o:- /var/www/html

#List the permissions of the '/var/www/html' directory after setting the default ACL
ls -ld /var/www/html

#Get the ACL for the '/var/www/html' directory
getfacl /var/www/html

#Write "Hello from Apache" to the 'index.html' file in the '/var/www/html' directory
echo "Hello from Apache" > /var/www/html/index.html

#Get the ACL for the 'index.html' file in the '/var/www/html' directory
getfacl /var/www/html/index.html

#Start the 'httpd' service
systemctl start httpd

#Send a GET request to the local server
curl localhost

#The default ACLs are not inherited for existing files
getfacl /var/www/html/file1