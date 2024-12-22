#Working on redhat

#Display the path of the 'dnf' executable
which dnf

#Display the path of the 'yum' executable
which yum

#List detailed information about the 'dnf' executable
ls -l /usr/bin/dnf 

#List detailed information about the 'yum' executable
ls -l /usr/bin/yum

#List detailed information about the 'dnf' executable using the path returned by 'which'
ls -l $(which dnf)

#List detailed information about the 'yum' executable using the path returned by 'which'
ls -l $(which yum)