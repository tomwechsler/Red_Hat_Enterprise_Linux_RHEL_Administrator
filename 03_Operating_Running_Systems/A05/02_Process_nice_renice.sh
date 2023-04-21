#Working on the rhel system

sleep 1000&

jobs

ps -lp $(pgrep sleep)



The command ps with the option -l lists both the nice value and priority of a
process.