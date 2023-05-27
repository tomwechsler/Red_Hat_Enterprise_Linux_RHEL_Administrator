#Working on the rhel system

cp /etc/hosts .

cat hosts

#This does not work
mv /etc/hosts .

ls

mv hosts hosts.old

mkdir test

cd test

touch files{1..12}

ls

ls files*

#The word files an one character (in summary 6 characters)
ls files?

ls files??

#Remove files
rm files??

rm -i files?




