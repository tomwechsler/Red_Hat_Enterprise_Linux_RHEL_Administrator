mkdir -p vagrant/rhel

cd vagrant/rhel 

vagrant init generic/rhel9 

vagrant up

vagrant ssh

sudo subscription-manager register --username <your-acc>\ --password <your-password> --auto-attach



Using VirtualBox with Vagrant from Hashicorp allows a far simpler approach to
virtual machine management and we can allow someone else to install RHEL for
us.