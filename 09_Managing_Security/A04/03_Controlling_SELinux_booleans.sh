#Working on alma

#List all SELinux booleans
getsebool -a

#List the 'policycoreutils', 'setools', 'setools-console', and 'setroubleshoot' packages using dnf package manager with root privileges
sudo dnf list policycoreutils setools setools-console setroubleshoot

#Install the 'policycoreutils', 'setools', 'setools-console', and 'setroubleshoot' packages using dnf package manager with root privileges
sudo dnf install -y policycoreutils setools setools-console setroubleshoot

#List all SELinux booleans using semanage with root privileges
sudo semanage boolean --list

#List all SELinux booleans using semanage and filter for 'secure_mode' with root privileges
sudo semanage boolean --list | grep secure_mode

#Set the SELinux mode to permissive with root privileges
sudo setenforce 0

#Set the 'secure_mode_policyload' SELinux boolean to true with root privileges
sudo setsebool secure_mode_policyload on #-P for permanent

#List all SELinux booleans using semanage and filter for 'secure_mode' with root privileges
sudo semanage boolean --list | grep secure_mode

#Set the SELinux mode to enforcing with root privileges
sudo setenforce 1 #This will work making more secure the system

#Display the current SELinux mode
getenforce

#Set the SELinux mode to permissive with root privileges
sudo setenforce 0 #This will fail