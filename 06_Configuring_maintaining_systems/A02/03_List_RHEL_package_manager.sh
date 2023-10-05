#Working on the redhat system

#Check if a package is installed or not, globbing can be used
dnf list tree

#Which packages installs tree
sudo dnf provides '*/bin/tree'

#Install software package, use -y to install without interaction 
sudo dnf install tree

sudo tree /etc

#Removing an installed package, purge would also remove configuration files
sudo dnf remove tree

#Install httpd
sudo dnf install httpd

#View the dnf/dnf history log
sudo dnf history list 

#Undo the numbered command in your history. This can be quite useful in reversing an update
sudo dnf history undo 14 

#View the dnf/dnf history log
sudo dnf history list

#Undo the tree uninstall
sudo dnf history undo 16