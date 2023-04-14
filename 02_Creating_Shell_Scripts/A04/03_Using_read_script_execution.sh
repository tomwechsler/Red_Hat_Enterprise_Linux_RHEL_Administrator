#Working on alma

#Shell shortcut
!v

if [ "$#" -lt 1 ] ; then
  echo "usage: $0 <username>"
  exit 1
elif getent passwd "$1" ; then
  echo "The user $1 already is on the system"
  exit 2
fi
read -s -p "Enter a new password for the user $1: " USER_PASSWORD

#Save and exit

createuser.sh fred

#In this case it will not read the password
createuser.sh fred P@ssw0rd



The read command can be used to prompt for input during the script execution.


In RHEL the passwd command is able to script password creation without user
interaction. Other distributions such as Ubuntu require the using chpasswd.

RHEL: echo "$USER_PASSWORD" | sudo passwd "$1" --stdin
All Linux Distributions: echo "$1:$USER_PASSWORD" | sudo chpasswd