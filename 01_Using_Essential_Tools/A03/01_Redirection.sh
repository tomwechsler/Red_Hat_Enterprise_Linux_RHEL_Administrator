pwd

ls

ls -la

touch file1

file file1

echo hello > file1

file file1

ls -l /etc/hosts
ls -l /etc/Hosts
ls -l /etc/Hosts /etc/hosts

ls -l /etc/hosts > output 
ls -l /etc/Hosts /etc/hosts >> output 

ls -l /etc/Hosts 2> error

ls -l /etc/hosts /etc/Hosts &> log

cat > story.txt <<END
line 1
line 2
END


The command touch can be used to create an empty file. We can also create 
files using shell redirection. Shell output is normally sent to the console for both
STDOUT and STDERR. We can redirect either or both to files.

Output from a command without errors will be sent to STDOUT.
Error output from a command will be sent to STDERR. 
One command may produce output with some errors along with success.

Non-error output can be redirected using the greather than operator and directed
to a file. Use > to overwrite and >> to append.
Where errors occur, they display on the console as they have not been
redirected.

Error output can be redirected using 2>. Again, the use of 2>> can be used to
append rather than overwrite.

Output can be combined to a single file if required. Here, all output is redirected
to the file called log.

Multiline text files can be created from the command line of scripts using
HEREDOCS. Any keyword can be used that will not appear in the file text.