#Working on the redhat system

sudo -i

#Display information about available updates
dnf updateinfo

#Display information about available security updates
dnf updateinfo --security

#Display information about available security updates with severity "Important"
dnf updateinfo --sec-severity Important

#Display detailed information about available security updates with severity "Important"
dnf updateinfo info --sec-severity Important 

#Install the security update with advisory RHSA-2021:0218
dnf update --advisory RHSA-2023:4201

#Install all available security updates with severity "Important"
dnf update --sec-severity Important

#List the transaction history of DNF
dnf history list