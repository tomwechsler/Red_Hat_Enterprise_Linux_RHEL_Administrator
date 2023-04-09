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



The command chmod, change mode, is used to adjust the file permissions. Using
the option -v we are able to display both the current and newly assigned
permissions. We can use either binary or symbolic notation.

Often, it is incorrectly thought that symbolic permissions are simpler and only
used when you start your administration career. This is far from the case as we
see with -X. The upper-case X is used to set execute only of directories of files
where execute is already set in one or more objects.

Another misunderstanding the difference between:
chmod +x file and
chmod a+x file omitting the object, chmod applied permissions allowed via the
umask. Using -a explicitly, permissions are assigned regardless of the umask.