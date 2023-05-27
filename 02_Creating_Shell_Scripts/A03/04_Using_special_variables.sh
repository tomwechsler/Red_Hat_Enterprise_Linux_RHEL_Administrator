#Working on alma

echo $0 

ls /etc/hosts 

stat !$ 

vim bin/my.sh 

#!/bin/bash
echo "the programm is $0 it has $# args"
echo "the programm is $(basename $0) it has $# args"
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


