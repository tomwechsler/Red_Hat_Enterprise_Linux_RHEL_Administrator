#Working on alma

#Special variables

# $$ - Outputs the process ID (PID) of the current shell process.

# $? - Displays the exit status of the last command executed (0 = successful).

# !$ - Returns the last argument of the previous command.

# $0 - Contains the name of the script or command that was called.

# $1 - The first argument that was passed to a script (analogous: $2, $3, ...).

# $# - Displays the number of arguments that were passed.

# $* - Returns all arguments as a single string.

# $@ - Returns all arguments as separate words (as if individually enclosed in quotation marks) - important for loops.

echo $0 

ls /etc/hosts 

stat !$ 

vim bin/my.sh 

#!/bin/bash
echo "the programm is $0 it has $# args" #The name (with the path) of the script and the number of arguments
echo "the programm is $(basename $0) it has $# args" #The name of the script and the number of arguments
ps -f -p $1

#Save and exit

my.sh 1

#The second argument will not be considered
my.sh 1 2

#This will also not work
my.sh

vim bin/my.sh 

#!/bin/bash
echo "the programm is $0 it has $# args"
echo "the programm is $(basename $0) it has $# args"
PID=${*:-"1"}
ps -f -p $PID

#This will work
my.sh

my.sh $$

my.sh $$ 1