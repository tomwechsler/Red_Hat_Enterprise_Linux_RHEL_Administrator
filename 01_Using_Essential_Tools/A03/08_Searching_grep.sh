#Working on the rhel system

#Search for lines containing 'root' in the /etc/passwd file
grep root /etc/passwd

#Search for lines starting with 'root' in the /etc/passwd file
grep ^root /etc/passwd

#Search for lines containing 'bash' in the /etc/passwd file
grep bash /etc/passwd

#Search for lines ending with 'bash' in the /etc/passwd file
grep bash$ /etc/passwd

#Search for lines containing 'Password' in the /etc/ssh/sshd_config file with superuser privileges
sudo grep Password /etc/ssh/sshd_config

#Search for lines starting with 'Password' in the /etc/ssh/sshd_config file with superuser privileges
sudo grep ^Password /etc/ssh/sshd_config

#Count the number of lines in the /etc/ssh/sshd_config file with superuser privileges
sudo wc -l /etc/ssh/sshd_config

#Search for lines that do not start with '#' or are not empty in the /etc/ssh/sshd_config file with superuser privileges
sudo grep -vE '^(#|$)' /etc/ssh/sshd_config

#Count the number of lines that do not start with '#' or are not empty in the /etc/ssh/sshd_config file with superuser privileges
sudo grep -vE '^(#|$)' /etc/ssh/sshd_config | wc -l