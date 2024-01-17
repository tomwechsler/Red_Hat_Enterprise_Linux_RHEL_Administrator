#Working on the rhel system

#For later create a .vimrc file
vim .vimrc

syntax on
set bg=dark
autocmd FileType yaml setlocal ai et ts=2 sw=2 cuc cul

#Clone the 'Red_Hat_Enterprise_Linux_RHEL_Administrator' repository
git clone https://github.com/tomwechsler/Red_Hat_Enterprise_Linux_RHEL_Administrator.git

#Copy the 'podman' directory from the 'Red_Hat_Enterprise_Linux_RHEL_Administrator/10_Container_Management/A08' directory to the current directory
cp -r Red_Hat_Enterprise_Linux_RHEL_Administrator/10_Container_Management/A08/podman/ .

#List the contents of the '.ssh' directory with their details
ls -l .ssh/

#Copy the 'id_rsa.pub' file from the '.ssh' directory to the 'podman/project/fedora' directory
cp .ssh/id_rsa.pub ~/podman/project/fedora/

#Copy the 'id_rsa.pub' file from the '.ssh' directory to the 'podman/project/ubuntu' directory
cp .ssh/id_rsa.pub ~/podman/project/ubuntu/

#Display the directory structure of 'podman/project'
tree ~/podman/project/