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


