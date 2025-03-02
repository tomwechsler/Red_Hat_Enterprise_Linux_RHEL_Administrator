#How the shell works

#What happens when you press the 'enter' key after a command? The shell always processes line
#line by line. If you enter a command and then press the enter key, this is translated by the shell
#translates it. If I just type cd and nothing else, nothing happens.

#But what happens if I enter a command like: hophop ? It takes a short moment, the shell
#tries to find out what it is, but finds nothing and the output is 'Command not found'.

#But what actually defines a COMMAND? All characters up to the first space/blank are translated for
#is translated as a command for the shell. How does the shell find the commands? The shell uses the environment variables
#specifically the variable $PATH

#Display the PATH variable
echo $PATH

#I can use the type command to find out where this command is stored. For example

type cd (this is a built-in shell command)
type less (less is in /usr/bin/less)

#So what happens when I enter a command like cd ~? You might think that cd passes an argument with ~. But that is not correct. 
#The shell translates the line before the command. Let's see what really happens:

#Turn on the debug level
set -x (sets a debug level)

tom@rocky ~ $ cd ~
+ cd /home/tom (now you can see that the shell first translates the tilde and executes it at cd)

tom@rocky ~ $ echo $PATH
+ echo /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

tom@rocky ~ $ cd $HOME
+ cd /home/tom

#These three examples show that the variables are compiled first and then the command is executed.

#Turn off the debug level
set +x