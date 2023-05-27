#Working on alma

vim bin/createuser.sh

if [ "$#" -lt 1 ] ; then
  echo "usage: $0 <username>"
  exit 1
elif getent passwd "$1" ; then
  echo "The user $1 already is on the system"
  exit 2
fi

#Save and exit

createuser.sh fred

echo $?

createuser.sh vagrant

echo $?

createuser.sh

echo $?


