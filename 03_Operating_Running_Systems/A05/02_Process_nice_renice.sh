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


