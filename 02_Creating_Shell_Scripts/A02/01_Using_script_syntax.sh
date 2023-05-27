#Working on alma

type for

for message in salut ciao
do
echo $message
done

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


