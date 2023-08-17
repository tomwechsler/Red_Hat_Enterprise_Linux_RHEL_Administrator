sudo losetup -f <disk file>                 #Attach next available loop device 

sudo losetup /dev/loop1 /var/disks/disk1    #Attach loop1 

losetup                                     #List loop devices 

sudo losetup -d /dev/loop0                  #Delete or detach loop0 

sudo losetup -D                             #Detach all