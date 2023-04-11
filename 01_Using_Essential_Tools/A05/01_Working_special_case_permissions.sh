#Working on the rhel system

touch log

ls -l log

cat log

chmod -v u=w log

#Permission denied
cat log

#This will work
echo hello >> log

sudo cat log

mkdir -m 155 logs

cd logs

#Permission denied
ls

cd ..

chmod -v 0355 logs

echo test >> logs/file

#If you know the paths it works
cat logs/file

ls logs

