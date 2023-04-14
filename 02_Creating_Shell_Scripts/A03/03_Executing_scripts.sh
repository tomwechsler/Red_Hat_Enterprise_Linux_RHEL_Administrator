#Working on alma

chmod -v a-x my.sh

bash my.sh

chmod -v a+x my.sh

#This does not work
my.sh

./my.sh

#We can use the bin directory in our home directory
echo $PATH

ls

mkdir bin && mv my.sh bin

#Now it works
my.sh

which my.sh



We can run scripts with the bash command: bash my.sh
To run directly we must set the x bit: chmod a+x my.sh
The PATH variable describes which directories are searched for programms.
RHEL includes ~/bin => mkdir bin && mv my.sh ~/bin
