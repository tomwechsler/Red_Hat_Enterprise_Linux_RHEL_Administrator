#Working on the redhat system

sudo -i

#Display information about available updates
dnf updateinfo

#Display information about available security updates
dnf updateinfo --security

#Display information about available security updates with severity "Important"
dnf updateinfo --sec-severity Important

#Display information about available security updates with severity "Critical"
dnf updateinfo --sec-severity Critical

#Display information about available security updates with severity "Moderate"
dnf updateinfo --sec-severity Moderate

#Display information about available security updates with severity "Low"
dnf updateinfo --sec-severity Low

#Display detailed information about available security updates with severity "Important"
dnf updateinfo info --sec-severity Important 

#Install the security update with advisory RHSA-2025:0146
dnf update --advisory RHSA-2025:0146

#Install all available security updates with severity "Important"
dnf update --sec-severity Important

#List the transaction history of DNF
dnf history list