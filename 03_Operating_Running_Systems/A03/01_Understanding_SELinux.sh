#Working on the the rhel system

#Do not run on a production system!

#Important => working as root
sudo -i

useradd -m fred

ls -Z /etc/shadow

chcon -t user_home_t /etc/shadow

ls -Z /etc/shadow

sudo -i -u fred

restorecon -v /etc/shadow

sudo -i -u fred

exit

exit

sudo -i