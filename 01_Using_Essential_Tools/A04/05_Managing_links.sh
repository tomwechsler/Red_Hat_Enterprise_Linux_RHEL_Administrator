#Working on the rhel system

mkdir new_dir

ls -ld new_dir

ls -ldi new_dir/

ls -ldi new_dir/ new_dir/.

mkdir new_dir/dir1

ls -ldi new_dir/ new_dir/.

ls -ldi new_dir/dir1/..

#We can count the subdirectories
ls -ld /etc

#Create a symbolix link (with no name - the name of the file will be used)
ln -s /etc/services ports

ls -l ports

cat ports


The hard link count of a new directory will always be 2. The name of the
directory and the directory new_dir/. is linked to the same metadata. The option
-i can be used to show the inode or directory entry. Creating subdirectories will
increase the hard link-count. In the example the extra link is new_dir/dir1/.. which
is the same entry as new_die and new_dir/.

Hard links are just extra names linked to the same metadata. On the other hand, 
soft links are a special file type that links to the destination file. This is a
completely new file that is used as a link to the target.