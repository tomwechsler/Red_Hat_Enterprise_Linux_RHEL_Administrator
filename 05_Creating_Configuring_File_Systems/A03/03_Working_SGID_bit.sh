#Working on the rhel system

sudo chmod -v 1770 /admin

ls -ld /admin

sudo su - tux

id

cd /admin

exit

ls -l

umask 007

touch file1

ls -l file1

sudo chmod -v g+s /admin

touch file2

#The file2 is created with the group of the parent directory
ls -l

sudo -i

umask 007

touch /admin/root2

exit

#The root2 file is created with the group of the parent directory
ls -l