#Working on rocky

vim bin/createuser.sh

if [ "$#" -lt 1 ] ; then
  echo "usage: $0 <username>"
  exit 1
elif getent passwd "$1" ; then
  echo "The user $1 already is on the system"
  exit 2
fi

#Save and exit

#Run the createuser.sh script with the argument 'fred'
createuser.sh fred

#Display the exit status of the last command
echo $?

#Run the createuser.sh script with the argument 'vagrant'
createuser.sh vagrant

#Display the exit status of the last command
echo $?

#Run the createuser.sh script without arguments
createuser.sh

#Display the exit status of the last command
echo $?