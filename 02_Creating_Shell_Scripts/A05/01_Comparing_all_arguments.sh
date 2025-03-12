#Working on rocky

#Shell shortcut
!v

if [ "$#" -lt 1 ] ; then
  echo "usage: $0 <username>"
  exit 1
elif getent passwd "$1" ; then
  echo "The user $1 already is on the system"
  exit 2
fi
#read -s -p "Enter a new password for the user $1: " USER_PASSWORD
#sudo useradd -m "$1"
#echo "$USER_PASSWORD" | sudo passwd --stdin "$1"
#getent passwd "$1"
for u in "$*" #We use the * wildcard to get all the arguments
do
  echo "User $u"
done
for u in "$@" #We use the @ wildcard to get all the arguments as an array
do
  echo "User $u"
done

#Save and exit

#We run the script with some arguments
createuser.sh u1 u2 u3

#We run the script with some arguments
createuser.sh "u1 u2" u3

#We remove the lines and hashtags we just made
!v

#Save and exit