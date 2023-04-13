#Working on alma

vim bin/createuser.sh

if [ "$#" -lt 1 ] ; then
  echo "usage: $0 <username>"
  exit 1
fi

#Save and exit

chmod a+x bin/createuser.sh

createuser.sh

echo $?

createuser.sh fred

echo $?

