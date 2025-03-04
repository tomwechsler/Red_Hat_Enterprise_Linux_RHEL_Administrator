#Ensure we are in our home directory
cd 

#Creates directory in current directory
mkdir my_directory  

#Creates directory in your home directory (~) 
mkdir ~/my_directory 

#This will not work because the directory does not exist
mkdir dir1/dir2 

#This will work because the -p option creates the parent directory
mkdir -p dir1/dir2 

#Use shortcut keys ESC + . To recall last argument
cd ESC+. 

#This will not work because the directory is not empty
rmdir dir1

#This will work because the -r option removes the directory and its contents
rm -rf dir1