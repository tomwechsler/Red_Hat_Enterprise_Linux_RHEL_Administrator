#Working on the rhel system

#Display the contents of the /etc/hosts file
cat /etc/hosts

#Display the first 10 lines of the /etc/passwd file
head /etc/passwd

#Display the first 2 lines of the /etc/passwd file
head -n2 /etc/passwd

#Display the last 10 lines of the /etc/passwd file
tail /etc/passwd

#Display the last 2 lines of the /etc/passwd file
tail -n2 /etc/passwd

#Count the number of lines in the /etc/services file
wc -l /etc/services

#View the contents of the /etc/services file one page at a time
less /etc/services

#To search use /
#To quit use q