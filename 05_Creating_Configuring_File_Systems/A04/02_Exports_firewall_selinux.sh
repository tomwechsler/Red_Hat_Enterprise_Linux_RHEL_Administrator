#Working on the rhel system

systemctl status nfs-server

systemctl stop nfs-server

vim /etc/exports.d/my.exports
/my/data	192.168.56.*(rw)
/my/files	192.168.56.*(rw,no_root_squash)

mkdir /my/data
mkdir /my/files

cd /my/data

touch 1
touch 2

cd /my/files

touch file23
touch file24

cd

#Configure SELinux
ls -ldZ /data /files

semanage fcontext -a -t public_content_rw_t "/my/data(/.*)?"
semanage fcontext -a -t public_content_rw_t "/my/files(/.*)?"

ls -ldZ /my/data /my/files

restorecon -Rv /data

restorecon -Rv /files

systemctl start nfs-server

systemctl status nfs-server

exportfs -r

exportfs -v

#Configure the firewall
firewall-cmd --state

firewall-cmd --list-all

firewall-cmd --get-services

find / -name *.xml | grep nfs

firewall-cmd --add-service=nfs

firewall-cmd --list-all

#Two ways to make the change permanent
firewall-cmd --runtime-to-permanent

firewall-cmd --permanent --add-service=nfs

firewall-cmd --reload

showmount -e localhost