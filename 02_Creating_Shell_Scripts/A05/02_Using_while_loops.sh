#Working on alma

#We use an empty password
createuser.sh u99

sudo userdel -r u99

#Shell shortcut
!v

if [ "$#" -lt 1 ] ; then
  echo "usage: $0 <username>"
  exit 1
elif getent passwd "$1" ; then
  echo "The user $1 already is on the system"
  exit 2
fi
while ! [ -n "$USER_PASSWORD" ]
do
 read -s -p "Enter a new password for the user $1: " USER_PASSWORD 
done
sudo useradd -m "$1"
echo "$USER_PASSWORD" | sudo passwd --stdin "$1"
getent passwd "$1"

#Save and exit

#Try first without a password
createuser.sh u99

sudo userdel -r u99



