#Working on the redhat system

sudo -i

ls /etc/cron*

cat /etc/crontab

echo "15 7 * * * root ls /etc > /tmp/etc" > /etc/cron.d/ls_etc

man crontab

man 5 crontab

exit

crontab -e

