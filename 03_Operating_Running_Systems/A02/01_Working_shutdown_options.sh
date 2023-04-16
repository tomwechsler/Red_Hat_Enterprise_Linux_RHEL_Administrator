#Working on the rhel system

shutdown --help

-H:      Halt is bring down to BIOS prompt 
-h / -P: Poweroff , and actual full shutdown
-r:      Reboot system 
-c:      Cancel

sudo shutdown +20 "Shutting down in 20" 

sudo shutdown 17:00 "System going down at 5 pm" 

sudo shutdown now "System going down"



If you are the only one on the system it does not really matter how you shut the
system down, so long as it is safe. If users are logged on to the system the timing
and messaging (wall) options provide more help.

As well as the messaging and timing elements, the options help with the
functionality. Especially is you need to cancel and impending event.

The default event is -h/-P to poweroff a system. The time can be specified in the
number of minutes or a time format. Alternatively use now, but no message is
sent, and users lose their connection.