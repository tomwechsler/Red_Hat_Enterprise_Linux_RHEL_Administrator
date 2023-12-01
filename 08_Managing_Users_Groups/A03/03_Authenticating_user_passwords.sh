#Working on the rhel system

#Set the password for 'u1' user with root privileges
echo Password | sudo passwd --stdin u1

#Set the password for 'u2' user with root privileges
echo Password | sudo passwd --stdin u2

#Get the 'u1' user entry from the shadow database with root privileges
sudo getent shadow u1

#Get the encrypted password field for 'u1' user from the shadow database with root privileges
sudo getent shadow u1 | cut -f2 -d:

#Get the password algorithm, salt, and encrypted password for 'u1' user from the shadow database with root privileges
sudo getent shadow u1 | cut -f2 -d: | awk -F$ '{ print "alg: " $2 "\nsalt: " $3 "\npwd: " $4 }'

#Generate a SHA-512 hashed password with a specified salt using openssl
openssl passwd -6 -salt xyz Password

#Generate a SHA-512 hashed password with a specified salt using openssl for a different password
openssl passwd -6 -salt xyz Password2

#Generate a SHA-512 hashed password using openssl
openssl passwd -6 Password

#Get the 'u1' and 'u2' user entries from the shadow database with root privileges
sudo getent shadow u1 u2