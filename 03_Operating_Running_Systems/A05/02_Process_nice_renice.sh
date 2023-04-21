#Working on the rhel system

sleep 5

sleep 5&

jobs

#About 17 minutes
sleep 1000&

#You don't believe me
expr 1000 / 60

sudo dnf install -y bc

echo "1000/60" | bc -l

sleep 1000&

jobs

ps -elf | grep sleep

pgrep sleep

ps -lp $(pgrep sleep)

pkill sleep

nice -n 12 sleep 1000&

ps -lp 9781

renice 19 9781

renice 10 9781


The command ps with the option -l lists both the nice value and priority of a
process.

The command nice can be used to adjust the starting nice value, affecting the
allocated priority. Standard users cannot set negative nice values meaning, they
can only assign processes with a lower priority than would be assigned by
default.

The renice command can be run against existing processes. Standard users
cannot set lower nice values than currently assigned.