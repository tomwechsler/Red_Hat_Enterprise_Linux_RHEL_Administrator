#Working on alma

#Type shows the type of a command
type for

#The for loop is used to iterate over a list of items
for message in salut ciao
do
echo $message
done

#The for loop can be written on one line
for m in hi salut ciao ; do echo $m; done

#A practical example
for u in bob sally sue
do
sudo useradd -m $u
echo P@ssw0rd | sudo passwd --stdin $u
tail -n1 /etc/passwd
done

#Hit up arrow
for u in bob sally sue ; do sudo userdel -r $u; done

tail -n3 /etc/passwd

i=3 ; while [ $i -gt 0 ]; do echo $i; let i-=1; done


