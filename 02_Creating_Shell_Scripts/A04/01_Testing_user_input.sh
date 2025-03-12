#Working on rocky

vim bin/createuser.sh

if [ "$#" -lt 1 ] ; then
  echo "You must provide a username: $0 <username>"
  exit 1
fi

#Save and exit

#Make the createuser.sh script executable
chmod a+x bin/createuser.sh

#Run the createuser.sh script without arguments
createuser.sh

#Display the exit status of the last command
echo $?

#Run the createuser.sh script with the argument 'fred'
createuser.sh fred

#Display the exit status of the last command
echo $?