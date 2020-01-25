# Local_Recon

[!] AUTHOR: CyberMunky - YouTube: Exploit Security - Twitter: @Cybermunky1
[!] VERSION: 1.0
[!] DATE: 01/25/2020

[!] Created by CyberMunky - This program will traverse the file system of
Linux and look for potentially vulnerable files that the current user 
is capacble of exploiting to their desire. This is a very simple program at 
the current time and will simply check for existence & readibility of the
files listed below. Program will conitnue to grow with functionality over
time.

[!] This program is intended to be ran locally on a victim computer and 
automate the many checks of potentially vulnerabile files. Currently it 
will only check and read (using cat) the files listed below.

/etc/passwd 
/etc/shadow 
/etc/group 
/etc/gshadow
