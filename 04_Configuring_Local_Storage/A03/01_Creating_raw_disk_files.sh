#Working on rhel

time sleep 5

time dd if=/dev/zero of=dd.disk bs=1M count=500 

time fallocate -l 500M fa.disk 