#Working on the rhel system

grep root /etc/passwd

grep ^root /etc/passwd

grep bash /etc/passwd

grep bash$ /etc/passwd

sudo grep Password /ect/ssh/sshd_config

sudo grep ^Password /etc/ssh/sshd_config

sudo wc -l /etc/ssh/sshd_config

sudo grep -vE '^(#|$)' /etc/ssh/sshd_config

sudo grep -vE '^(#|$)' /etc/ssh/sshd_config | wc -l


Often we need to check configuration values which is best served by searching
files using the command grep. Regular expression meta-characters can help our
search. Using ^ we can look for lines starting with given text.