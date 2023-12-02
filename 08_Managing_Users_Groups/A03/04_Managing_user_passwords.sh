#Working on the alma system

#Set the password for 'u1' user with root privileges
sudo passwd u1

#Set the password for 'u1' user with root privileges using stdin
echo Password | sudo passwd --stdin u1

#Set the password for 'u1' user with root privileges using chpasswd
echo "u1:Password" | sudo chpasswd

#Create a file named 'users' in vim editor with user-password pairs
vim users
u1:Password
u2:Password2

#Save and exit the file

#Display the contents of the 'users' file
cat users

#Set the passwords for users from the 'users' file with root privileges
cat users | sudo chpasswd

#Display password status for 'u1' user with root privileges
sudo passwd -S u1

#Lock the password for 'u1' user with root privileges
sudo passwd -l u1

#Display password status for 'u1' user with root privileges after locking
sudo passwd -S u1

#Unlock the password for 'u1' user with root privileges
sudo passwd -u u1

#Display password status for 'u1' user with root privileges after unlocking
sudo passwd -S u1

#Print the user identifier, group identifier, and groups for 'u1'
id u1

#Add a new system user named 'u3' with root privileges
sudo useradd -r u3

#Print the user identifier, group identifier, and groups for 'u3'
id u3

#Display password aging information for 'u3' user with root privileges
sudo chage -l u3

#Change password aging information for 'u3' user with root privileges
sudo chage -M 99999 -m 0 -I -1 -E -1 u3

#Display password aging information for 'u3' user with root privileges after changing
sudo chage -l u3