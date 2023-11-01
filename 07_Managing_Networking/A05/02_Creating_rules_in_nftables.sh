#Working on the rhel system

sudo -i

#Stop the firewalld service
systemctl stop firewalld

#Flush the nftables rules
nft flush ruleset

#List the rules
nft list ruleset

#List the tables
nft list tables

#Add table inet filter
nft add table inet filter

#List ruleset
nft list ruleset

#Add chain input
nft add chain inet filter INPUT { type filter hook input priority 0 \; policy accept \; }

#List ruleset
nft list ruleset

#Rule for the loopback interface
nft add rule inet filter INPUT iif lo accept

#Rule for the established connections
nft add rule inet filter INPUT ct state established,related accept

#Rule for port 22
nft add rule inet filter INPUT tcp dport 22 accept

#Counter drop rule
nft add rule inet filter INPUT counter drop

#List ruleset
nft list ruleset

#Ping from the remote system
ping -c 2 192.168.56.101

#SSH from the remote system
ssh 192.168.56.102

#List ruleset
nft list ruleset