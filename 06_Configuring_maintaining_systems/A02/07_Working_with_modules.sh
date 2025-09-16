#Working on the redhat system (on rhel 10 there are no modules any more)

sudo -i

#Remove the web repos
rm /etc/yum.repos.d/127*

#List all available modules
dnf module list 

#List available modules for the Ruby language
dnf module list ruby 

#Install version 3.1 of the Ruby module
dnf module install ruby:3.1

#List available modules for the PostgreSQL database
dnf module list postgresql

#Enable the PostgreSQL module (shoud be optional)
dnf module enable postgresql:16

#Install the PostgreSQL client module
dnf module install postgresql:16/client