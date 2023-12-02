#Working on the alma system

#Add a new user named 'u1' with root privileges
sudo useradd u1

#Get the 'u1' user entry from the shadow database with root privileges
sudo getent shadow u1

#Open the login.defs file in vim editor with root privileges. This file defines the site-specific configuration for the shadow password suite
sudo vim /etc/login.defs

PASS_MAX_DAYS 90
PASS_MIN_DAYS 1
PASS_MIN_LEN 8
PASS_WARN_AGE 7

#Save and exit the file

#Get the 'u1' user entry from the shadow database with root privileges
sudo getent shadow u1

#Add a new user named 'u2' with root privileges
sudo useradd u2

#Get the 'u2' user entry from the shadow database with root privileges
sudo getent shadow u2

#Display password aging information for 'u1' user with root privileges
sudo chage -l u1

#Display password aging information for 'u2' user with root privileges
sudo chage -l u2