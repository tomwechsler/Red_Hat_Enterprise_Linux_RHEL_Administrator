#Working on the alma system

sudo -i

dnf install -y autofs

vim /etc/autoTABTAB

vim /etc/auto.master.d/my.autofs

/my /etc/auto.data

ls /data

vim /etc/auto.data
data -rw,soft 192.168.56.102:/my/data

systemctl enable --now autofs

#Exit the root session
exit

#Created when autofs is started
ls -ld /my

ls -l /my

cd /my

ls

#created when accessing the directory
cd data

ls