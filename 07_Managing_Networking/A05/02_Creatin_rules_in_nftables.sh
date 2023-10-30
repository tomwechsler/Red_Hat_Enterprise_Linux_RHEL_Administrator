#Working on the rhel system

sudo -i

#Disable and stop the firewalld service
systemctl disable --now firewalld

#Flush the nftables rules
nft flush ruleset

#List the rules
nft list ruleset

#List the tables
nft list tables

