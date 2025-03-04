#Working on the rhel system

#Copy the file to the current directory
cp /etc/hosts .

#List the content of the file
cat hosts

#This does not work
mv /etc/hosts .

ls

#Rename the file
mv hosts hosts.old

#Create a directory
mkdir test

#Move the file to the directory
cd test

#Create a range of files
touch files{1..12}

#List the files
ls

#List with globbing
ls files*

#The word files an one character (in summary 6 characters)
ls files?

#The word files and two characters (in summary 7 characters)
ls files??

#Remove files
rm files??

#Remove files with confirmation
rm -i files?