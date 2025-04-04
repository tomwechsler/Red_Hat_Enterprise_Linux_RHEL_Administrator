#Working on rocky

#Shell shortcut
!v

create_user () {
  if [ "$#" -lt 1 ] ; then
    echo "usage: $0 <username>"
    exit 1
  elif getent passwd "$1" ; then
    echo "The user $1 already is on the system"
    exit 2
  fi
  sudo useradd -m "$1"
  getent passwd "$1"
}

set_password () {
  while ! [ -n "$USER_PASSWORD" ] #While the password is not empty
  do
    read -s -p "Enter a password for the new user $1: " USER_PASSWORD
  done
  echo "$USER_PASSWORD" | sudo passwd --stdin "$1"
}

for u in "$@"
do
  create_user "$u"
  set_password "$u"
done

#Lets create some users
createuser.sh u1 u2 u3

#Did it work
su - u3

exit