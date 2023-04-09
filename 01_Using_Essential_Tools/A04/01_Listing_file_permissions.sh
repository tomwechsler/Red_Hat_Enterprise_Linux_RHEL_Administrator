#Working on the rhel system

ls -l /etc/hosts

ls -l /etc/shadow

stat /etc/hosts

stat -c %a /etc/hosts




Listing files with the -l option we can see more metadata from the file. This
includes the file type, permissions, link count, ownership, file size and the last
modified time. The command stat can also be used to view this data.