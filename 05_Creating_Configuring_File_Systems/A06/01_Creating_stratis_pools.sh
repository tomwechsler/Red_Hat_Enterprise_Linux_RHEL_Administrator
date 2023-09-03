#Working on the rhel system

sudo -i

dnf install stratisd stratis-cli

systemctl enable --now stratisd

lsblk

stratis pool create pool1 /dev/sdd

stratis pool list