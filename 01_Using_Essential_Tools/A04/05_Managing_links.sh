#Working on the rhel system

#Create a new directory named 'new_dir'
mkdir new_dir

#List detailed information about 'new_dir'
ls -ld new_dir

#List inode information about 'new_dir'
ls -ldi new_dir/

#List inode information about 'new_dir' and its current directory entry '.'
ls -ldi new_dir/ new_dir/.

#Create a subdirectory named 'dir1' inside 'new_dir'
mkdir new_dir/dir1

#List inode information about 'new_dir' and its current directory entry '.'
ls -ldi new_dir/ new_dir/.

#List inode information about the parent directory of 'dir1'
ls -ldi new_dir/dir1/..

#We can count the subdirectories
ls -ld /etc

#Create a symbolic link named 'ports' pointing to '/etc/services'
ln -s /etc/services ports

#List detailed information about the symbolic link 'ports'
ls -l ports

#Display the contents of the file pointed to by the symbolic link 'ports'
cat ports