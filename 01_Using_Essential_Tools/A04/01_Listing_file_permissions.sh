#Working on the rhel system

#List the files and directories in the current directory
ls

#List the files and directories in the current directory with detailed information
ls -l

#List detailed information about the /etc/hosts file
ls -l /etc/hosts

#List detailed information about the 'error' file (if it exists)
ls -l error

#List detailed information about the 'test' directory (if it exists)
ls -ld test

#List detailed information about the /etc/shadow file
ls -l /etc/shadow

#Display file or filesystem status for the 'error' file (if it exists)
stat error

#Display the file permissions in numeric (octal) format for the 'error' file (if it exists)
stat -c %a error

#Display the file permissions in human-readable format for the 'error' file (if it exists)
stat -c %A error

#Print the file name of the terminal connected to standard input
tty

#List detailed information about the terminal device file
ls -l $(tty)