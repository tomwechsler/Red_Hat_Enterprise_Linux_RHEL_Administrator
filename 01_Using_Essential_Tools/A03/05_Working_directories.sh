#Ensure we are in our home directory
cd 

#Creates directory in current directory
mkdir my_directory  

#Creates directory in your home directory (~) 
mkdir ~/my_directory 

mkdir dir1/dir2 

mkdir -p dir1/dir2 

#Use shortcut keys ESC + . To recall last argument
cd ESC+. 

rmdir dir1

rm -rf dir1


Directories can be created in Linux using the mkdir command. We need to have
the write permission to the directory where we want to create the new directory.
As a standard user this is often limited to your home directory. We can either
move into our home directory or specify it with the tilde as part of the directory
name.

We may have to use the -p or --parents options if the parent directory does not
already exist. To recall the previous argument used in your shell we have ESC+.

An empty directory can be removed with the rmdir command. More often a
directory can be removed with the rm -rf command. Always ensure you working 
as the correct user account and you have entered the correct directory to
remove.