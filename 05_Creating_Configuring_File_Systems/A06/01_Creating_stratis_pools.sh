#Working on the rhel system

sudo -i

dnf install stratisd stratis-cli

systemctl enable --now stratisd

stratis pool create pool1 /dev/sdd

stratis pool add-data pool1 /dev/sdX

stratis pool list