#Working on the rhel system

sudo -i

#The firewall state
firewall-cmd --state

#Stop the firewall
systemctl stop firewalld

#List the nft rules
nft list ruleset

#List the nftables tables
nft list tables

#Flush the nftables rules
nft flush ruleset

#List the nftables tables
nft list tables

#List the nft rules
nft list ruleset

#Start the firewall
systemctl start firewalld

#List the ip filter rules
nft list table ip filter

#List the nftables tables
nft list tables

#List the nft rules
nft list ruleset