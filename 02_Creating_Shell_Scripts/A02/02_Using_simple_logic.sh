#Working on alma

#&& => The second command only runs if the first command succedes mkdir dir1 && cd dir1
#|| => The second command only runs if the first command fails cd dir1 || mkdir dir1

echo $?

ls /etc/hosts

echo $?

ls /etc/Hosts

echo $?

ls

#Choose a directory which exists
mkdir etc

echo $?

mkdir etc || cd etc

pwd

mkdir sales && cd sales

cd mkt || mkdir mkt && cd mkt

pwd

cd

rm -r mkt

cd mkt 2>/dev/null || mkdir mkt && cd mkt

pwd

cd

cd mkt 2>/dev/null || mkdir mkt && cd mkt

cd

#Group them together
cd mkt 2>/dev/null || { mkdir mkt && cd mkt; }

cd

rm -r mkt

cd mkt 2>/dev/null || { mkdir mkt && cd mkt; }

pwd

cd mkt 2>/dev/null || { mkdir mkt && cd mkt; }

pwd


Applications, including scripts and commands will issue exit codes on
completion. The variable $? can be read to determine success or failure.