#Working on the rhel system

pwd

ls

ls -la

touch file1

ls

file file1

echo hello

#Content is overwritten
echo hello > file1
echo hello > file1
echo hello > file1

#To append
echo hello >> file1

cat file1

ls /etc/hosts
ls /etc/Hosts

#Does not work
ls /etc/Hosts >> file1

#Redirect errors
ls /etc/Hosts 2> error

cat error

ls /etc/hosts /etc/Hosts

ls /etc/Hosts /etc/hosts &> combined

cat combined

#Working with HEREDOCS
cat > story.txt <<END
line 1
line 2
END

cat story.txt



