#Working on the rhel system

grep root /etc/passwd

grep ^root /etc/passwd

grep bash /etc/passwd

grep bash$ /etc/passwd

sudo grep Password /etc/ssh/sshd_config

sudo grep ^Password /etc/ssh/sshd_config

sudo wc -l /etc/ssh/sshd_config

sudo grep -vE '^(#|$)' /etc/ssh/sshd_config

sudo grep -vE '^(#|$)' /etc/ssh/sshd_config | wc -l


