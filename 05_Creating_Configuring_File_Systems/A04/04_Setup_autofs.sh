#Working on the alma system

sudo -i

dnf install -y autofs

vim /etc/autoTABTAB

vim /etc/auto.master.d/srv.autofs

/srv /etc/auto.data

ls /srv

vim /etc/auto.data
nfsdata -rw,soft 192.168.56.108:/srv/nfsdata

systemctl enable --now autofs

#Exit the root session
exit

#Created when autofs is started
ls -ld /srv

ls -l /srv

cd /srv

ls

#created when accessing the directory
cd nfsdata

ls