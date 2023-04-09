#Working on the rhel system

ls

ls -l

ls -l /etc/hosts

ls -l error

ls -ld test

ls -l /etc/shadow

stat error

stat -c %a error

stat -c %A error

tty

tty -l $(tty)



Listing files with the -l option we can see more metadata from the file. This
includes the file type, permissions, link count, ownership, file size and the last
modified time. The command stat can also be used to view this data.