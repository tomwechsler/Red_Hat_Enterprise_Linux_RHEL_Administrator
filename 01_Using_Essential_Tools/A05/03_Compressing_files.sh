#Working on the rhel system

#Print the current working directory
pwd

#Remove all files and directories in the current directory with superuser privileges
sudo rm -rf *

#List the files and directories in the current directory
ls

#Create an uncompressed tarball of the /etc directory named etc.tar with superuser privileges
sudo tar -cf etc.tar /etc

#List the files and directories in the current directory with detailed information and human-readable file sizes, specifically showing etc.tar
ls -lh etc.tar

#Measure time for compression
time gzip etc.tar

#List the files and directories in the current directory with detailed information and human-readable file sizes
ls -lh

#Decompress the etc.tar.gz file using gunzip
gunzip etc.tar.gz

#List the files and directories in the current directory with detailed information and human-readable file sizes
ls -lh

#Compress the etc.tar file using bzip2 and measure the time taken
time bzip2 etc.tar

#List the files and directories in the current directory with detailed information and human-readable file sizes
ls -lh

#Decompress the etc.tar.bz2 file using bunzip2
bunzip2 etc.tar.bz2

#List the files and directories in the current directory with detailed information and human-readable file sizes
ls -lh

#Remove the etc.tar file with superuser privileges
sudo rm -rf etc.tar

#Create a compressed tarball of the /etc directory named etc.tar.gz with superuser privileges
sudo tar -czf etc.tar.gz /etc

#List the files and directories in the current directory with detailed information and human-readable file sizes
ls -lh

#Extract the contents of the etc.tar.gz file
tar -xf etc.tar.gz

#Change the current directory to etc
cd etc

#List the files and directories in the etc directory
ls