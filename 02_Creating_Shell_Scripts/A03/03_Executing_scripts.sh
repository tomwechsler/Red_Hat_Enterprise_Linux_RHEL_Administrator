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




