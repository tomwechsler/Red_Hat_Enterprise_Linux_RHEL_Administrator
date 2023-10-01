#Working on the redhat system

sudo -i

#List all available modules
dnf module list 

#List available modules for the Ruby language
dnf module list ruby 

#Install version 3.1 of the Ruby module
dnf module install ruby:3.1

#List available modules for the PostgreSQL database
dnf module list postgresql

#Install the PostgreSQL client module
dnf module install postgresql/client



#Using modules, we can select the version and profile we need.