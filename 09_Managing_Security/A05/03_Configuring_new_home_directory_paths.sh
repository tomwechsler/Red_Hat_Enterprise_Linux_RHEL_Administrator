#Working on alma (root)

#Display the manual page for 'semanage-fcontext'
man semanage-fcontext

#Create a new directory named 'staff'
mkdir /staff

#List the '/staff' directory with its security context
ls -ldZ /staff

#Add the context type 'home_root_t' into the SELinux policy
semanage fcontext -a -t home_root_t "/staff"

#Add a new file context for '/staff' directory that equals to '/home' directory using semanage
semanage fcontext -a -e /home /staff

#List the '/staff' directory with its new security context
ls -ldZ /staff

#Restore the SELinux context of the '/staff' directory with verbose output
restorecon -v /staff

#Create a new user named 'bob' with home directory '/staff/bob'
useradd -m bob -d /staff/bob

#List the '/staff/bob' directory with its security context
ls -ldZ /staff/bob

#List the contents of the '/etc/selinux/targeted' directory
ls /etc/selinux/targeted/

#List the contents of the '/etc/selinux/targeted/contexts/files' directory
ls /etc/selinux/targeted/contexts/files/

#List the '/etc/selinux/targeted/contexts/files/file_contexts.local' file
ls /etc/selinux/targeted/contexts/files/file_contexts.local

#Display the contents of the '/etc/selinux/targeted/contexts/files/file_contexts.local' file
cat /etc/selinux/targeted/contexts/files/file_contexts.local