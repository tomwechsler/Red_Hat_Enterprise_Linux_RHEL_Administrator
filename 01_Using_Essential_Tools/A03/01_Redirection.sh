#Working on the rhel system

#Print the current working directory
pwd

#List the files and directories in the current directory
ls

#List the files and directories in the current directory with detailed information, including hidden files
ls -la

#Create an empty file named 'file1'
touch file1

#List the files and directories in the current directory to verify the creation of 'file1'
ls

# Display the type of the file 'file1'
file file1

# Print the string 'hello' to the terminal
echo hello

#Content is overwritten
echo hello > file1
echo hello > file1
echo hello > file1

#To append
echo hello >> file1

cat file1

ls /etc/hosts
ls /etc/Hosts

#Does not work
ls /etc/Hosts >> file1

#Redirect errors
ls /etc/Hosts 2> error

cat error

ls /etc/hosts /etc/Hosts

ls /etc/Hosts /etc/hosts &> combined

cat combined

#Working with HEREDOCS
cat > story.txt <<END
line 1
line 2
END

cat story.txt



