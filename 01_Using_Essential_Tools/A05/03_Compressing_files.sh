#Working on the rhel system

pwd

sudo rm -rf *

ls

sudo tar -cf etc.tar /etc

ls -lh etc.tar

#Measure time for compression
time gzip etc.tar

ls -lh

gunzip etc.tar.gz

ls -lh

time bzip2 etc.tar

ls -lh

bunzip2 etc.tar.bz2

ls -lh

sudo rm -rf etc.tar

sudo tar -czf etc.tar.gz /etc

ls -lh

tar -xf etc.tar.gz

cd etc

ls