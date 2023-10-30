#Working on the rhel system

sudo -i

#The nfttable configuration file
cat /etc/sysconfig/nftables.conf

#The main nftables configuration file
cat /etc/nftables/main.nft

#Lets look closer
head -n 20 /etc/nftables/main.nft

#List the ruleset
nft list ruleset

nft list ruleset > /etc/sysconfig/nftables.conf

#Edit the nftables configuration file
vim /etc/sysconfig/nftables.conf

#At the top of the file add the following
flush ruleset

#Set counter drop
counter drop

#Save and exit the file

#Enable and start the nftables service
systemctl enable --now nftables.service

#List the ruleset
nft list ruleset