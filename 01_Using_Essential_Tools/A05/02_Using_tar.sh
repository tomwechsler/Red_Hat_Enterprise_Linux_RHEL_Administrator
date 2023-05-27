#Working on the rhel system

sudo du -sh /etc

sudo tar -cf etc.tar /etc

ls -lh etc.tar

#List the content
tar -tf etc.tar

tar -xf etc.tar

cd etc

pwd

ls

cd ..

#Do NOT on a production system
sudo rm /etc/hosts

cd /

sudo tar -xf ~vagrant/etc.tar etc/hosts

cat /etc/hosts


