#Working on alma

#&& => The second command only runs if the first command succedes mkdir dir1 && cd dir1
#|| => The second command only runs if the first command fails cd dir1 || mkdir dir1

#Print the exit status of the last executed command. If the command was successful, it will print 0
echo $?

#List the file '/etc/hosts'
ls /etc/hosts

#Print the exit status of the last executed command. If the 'ls /etc/hosts' command was successful, it will print 0
echo $?

#List the file '/etc/Hosts'. Note that Linux file paths are case-sensitive, so this may not be the same as '/etc/hosts'
ls /etc/Hosts

#Print the exit status of the last executed command. If the 'ls /etc/Hosts' command was successful, it will print 0. If the file does not exist, it will print a non-zero value
echo $?

ls

#Choose a directory which exists
mkdir etc

#Print the exit status of the last executed command. If the command was successful, it will print 0
echo $?

#Create a directory named 'etc'. If the command fails (for example, if the directory already exists), change the current directory to 'etc'
mkdir etc || cd etc

#Print the current working directory
pwd

#Create a directory named 'sales' and if the command is successful, change the current directory to 'sales'
mkdir sales && cd sales

#Change the current directory to 'mkt'. If the command fails (for example, if the directory does not exist), create a directory named 'mkt' and change the current directory to 'mkt'
cd mkt || mkdir mkt && cd mkt

#Print the current working directory
pwd

#Change the current directory to the home directory
cd

#Remove the directory named 'mkt' and its contents
rm -r mkt

#Try to change the current directory to 'mkt'. If the command fails (for example, if the directory does not exist), create a directory named 'mkt' and change the current directory to 'mkt'. The '2>/dev/null' part suppresses error messages
cd mkt 2>/dev/null || mkdir mkt && cd mkt

#Print the current working directory
pwd

#Change the current directory to the home directory
cd

#Try to change the current directory to 'mkt'. If the command fails (for example, if the directory does not exist), create a directory named 'mkt' and change the current directory to 'mkt'
cd mkt 2>/dev/null || mkdir mkt && cd mkt

cd

#Group them together
cd mkt 2>/dev/null || { mkdir mkt && cd mkt; }

cd

#Remove the directory named 'mkt' and its contents
rm -r mkt

#Group them together
cd mkt 2>/dev/null || { mkdir mkt && cd mkt; }

pwd

#Run again
cd mkt 2>/dev/null || { mkdir mkt && cd mkt; }

pwd


