#Working on the rhel system

cat octal.txt

umask

umask 0

touch file10

ls -l file10

mkdir demo1

ls -ld demo1

umask 077

umask

touch file20

ls -l file20

chmod -v 666 file_perms # or

chmod -v o+w file_perms

mkdir demo2

ls -ld demo2
