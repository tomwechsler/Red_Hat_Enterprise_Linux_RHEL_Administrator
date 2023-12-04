#Working on the alma system

#Display the contents of the group file which contains group account information
cat /etc/group

#Get entries from Name Service Switch libraries, in this case, the group database
getent group

#Search for 'vagrant' in the group file
grep vagrant /etc/group

#Search for 'users' in the group file
grep users /etc/group

#Add a new user named 'joe' with 'users' as the primary group (-g) and no user group (-n)
sudo useradd -n -g users joe

#Add a new user named 'mary' with 'users' as the primary group (-g) and no user group (-n)
sudo useradd -n -g users mary

#Add a new user named 'saly' with 'users' as the primary group (-g) and no user group (-n)
sudo useradd -n -g users saly

#Search for 'users' in the group file after adding new users
grep users /etc/group

#Get the group identifier (gid) for 'users' group from the group file
gid=$(awk -F: '/^users/{ print $3 }' /etc/group)

#Print the gid
echo $gid

#Print the entries from the passwd file where the gid matches the primary group gid
awk -F: -v gid=$gid 'gid == $4 { print $0 }' /etc/passwd