#Display the help message for the 'passwd' command
passwd --help

#Display the help message for the 'find' command
find --help

#Display the manual page for the 'find' command
man find

#Update the mandb
sudo mandb

# In the manual pages, we can search for a keyword (like 'perm') by typing '/' followed by the keyword.
# Press 'n' to continue searching for the next occurrence of the keyword.

#Display the manual page for the 'passwd' command in section 5 of the manual. Section 5 covers file formats and conventions.
man 5 passwd

#Display the manual page for the 'man' command itself
man man

#Use -k to search the manual page names and descriptions
man -k passwd

#Use -k and pipe to search for a keyword in the manual pages
man -k passwd | grep 1

#Use the option -a to search all sections
man -a passwd

#On an RHEL system install command-line-assistant
sudo dnf install command-line-assistant

#Use Lightspeed to find information, samples, and documentation
c "Please help me with passwd command"