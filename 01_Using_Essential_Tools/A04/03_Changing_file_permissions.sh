#Working on the rhel system

umask 002

touch file_perms

ls -l file_perms 

chmod -v 666 file_perms # or

chmod -v a+w file_perms

umask 007

mkdir -p upper/{dir1,dir2}

ls -lR upper

touch upper/{dir1,dir2}/file

ls -lR upper

chmod -vR a+X upper

chmod -vR +w upper

chmod -vR a+w upper



