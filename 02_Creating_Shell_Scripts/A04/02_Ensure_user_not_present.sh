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



Testing a command does not need the [] brackets. We check the exit status of
the command for success or failure. If getent succeeds the user account is
already on the system and we should exit the script. Using a different errot code
allows for better debugging.