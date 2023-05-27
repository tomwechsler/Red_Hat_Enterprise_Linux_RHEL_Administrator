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


