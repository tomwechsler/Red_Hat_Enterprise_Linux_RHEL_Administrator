#Working on the redhat system

sudo -i

#A lot of comments
cat /etc/chrony.conf

#All infos about the config file
man 5 chrony.conf

#Open the my.sed file in vim
vim my.sed

#Delete all lines that start with a comment or are empty
/^(#|$)/d

#Use the my.sed file to edit the /etc/chrony.conf file
sed -Ef my.sed /etc/chrony.conf

#Open the /etc/chrony.conf file in vim
!v

#Insert a new line before the first line that starts with "pool"
/^pool/i pool ch.pool.ntp.org

!s

#Open the /etc/chrony.conf file in vim
!v

#Delete the first line that starts with "pool" and contains "rhel"
/^pool .*rhel/d

#Use the my.sed file to edit the /etc/chrony.conf file in place
sed -i -Ef my.sed /etc/chrony.conf

#Display the contents of the /etc/chrony.conf file
cat /etc/chrony.conf