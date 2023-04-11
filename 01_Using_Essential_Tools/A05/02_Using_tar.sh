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



The command tar can be used to create file archives. Although, Tape Archives,
they are more commonly used in standard filesystems. By default, a TAR file is
not compressed but may appear to be a slightly small size than the original
content. This is due to the more efficient use of blocks in the filesystem and not
compression.