#Working on alma

echo $0 

ls /etc/hosts 
stat !$ 

vim bin/my.sh 



Note that $0 returns the full path to the program, we can strip this with the
basename command.

Changing $$, current PID, to $1 allows flexibility.

Using $1, we must provide an argument, if we provide more, they are ignored.
Using new variable with a default assignment of PID 1 will ensure the script
always works but the default is only needed if we have not provided arguments.
Using $* rather than $1, we use the complete list of supplied arguments.