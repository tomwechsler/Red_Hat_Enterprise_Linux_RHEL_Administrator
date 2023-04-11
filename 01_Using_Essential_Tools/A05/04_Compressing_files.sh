#Working on the rhel system

pwd

sudo rm -rf *

ls

sudo tar -cf etc.tar /etc

ls -lh etc.tar

#Measure time for compression
time gzip etc.tar

ls -lh

