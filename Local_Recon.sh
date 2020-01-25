#!/bin/bash

PASSWD=/etc/passwd 
SHADOW=/etc/shadow 
GROUP=/etc/group 
GSHDW=/etc/gshadow

displayLogo() {
  echo -e "\e[32m
   .##........#######...######.....###....##.........
   .##.......##.....##.##....##...##.##...##.........
   .##.......##.....##.##........##...##..##.........
   .##.......##.....##.##.......##.....##.##.........
   .##.......##.....##.##.......#########.##.........
   .##.......##.....##.##....##.##.....##.##.........
   .########..#######...######..##.....##.########...
                                                     
                                                                                                      
                                                     
   .########..########..######...#######..##....##   
   .##.....##.##.......##....##.##.....##.###...##   
   .##.....##.##.......##.......##.....##.####..##   
   .########..######...##.......##.....##.##.##.##   
   .##...##...##.......##.......##.....##.##..####   
   .##....##..##.......##....##.##.....##.##...###   
   .##.....##.########..######...#######..##....##   
	\e[0m"
}

displayLogo

echo -e "\e[32m[!] AUTHOR: CyberMunky - YouTube: Exploit Security - Twitter: @Cybermunky1\e[0m"
echo -e "\e[32m[!] VERSION: 1.0\e[0m"
echo -e "\e[32m[!] DATE: 01/25/2020\e[0m\n"

echo -e "[!] Created by CyberMunky - This program will traverse the file system of
    Linux and look for potentially vulnerable files that the current user 
    is capacble of exploiting to their desire.\n"

sleep 3

echo -e "\e[92m\n[+] YOUR CURRENT DIRECTORY:\e[0m" && pwd
echo -e "\e[92m\n[+] YOU ARE CURRENTLY SIGNED IN AS:\e[0m" && whoami

if [[ -f "$PASSWD"  ]]; then
  if [[ -r "$PASSWD" ]]; then
    echo -e "\e[32m\n[+] THIS FILE ($PASSWD) IS VALID AND CAN BE READ BY CURRENT USER\e[97m" && cat $PASSWD 
  fi 
  if [[ ! -r "$PASSWD" ]]; then
    echo -e "\e[91m\n[-] THIS FILE ($PASSWD) IS VALID BUT CANNOT BE READ BY CURRENT USER\e[97m"
  fi 
else
  echo -e "\e[91m\n[-] THIS FILE ($PASSWD) DOES NOT EXIST\e[97m"
fi 

if [[ -f "$SHADOW"  ]]; then
  if [[ -r "$SHADOW" ]]; then
    echo -e "\e[32m\n[+] THIS FILE ($SHADOW) IS VALID AND CAN BE READ BY CURRENT USER\e[97m" && cat $SHADOW
  fi 
  if [[ ! -r "$SHADOW" ]]; then
    echo -e "\e[91m\n[-] THIS FILE ($SHADOW) IS VALID BUT CANNOT BE READ BY CURRENT USER\e[97m"
  fi 
else
  echo -e "\e[91m\n[-] THIS FILE ($SHADOW) DOES NOT EXIST\e[97m"
fi

if [[ -f "$GROUP"  ]]; then
  if [[ -r "$GROUP" ]]; then
    echo -e "\e[32m\n[+] THIS FILE ($GROUP) IS VALID AND CAN BE READ BY CURRENT USER\e[97m" && cat $GROUP
  fi 
  if [[ ! -r "$GROUP" ]]; then
    echo -e "\e[91m\n[-] THIS FILE ($GROUP) IS VALID BUT CANNOT BE READ BY CURRENT USER\e[97m"
  fi 
else
  echo -e "\e[91m\n[-] THIS FILE ($GROUP) DOES NOT EXIST\e[97m"
fi

if [[ -f "$GSHDW"  ]]; then
  if [[ -r "$GSHDW" ]]; then
    echo -e "\e[32m\n[+] THIS FILE ($GSHDW) IS VALID AND CAN BE READ BY CURRENT USER\e[97m" && cat $GSHDW
  fi 
  if [[ ! -r "$GSHDW" ]]; then
    echo -e "\e[91m\n[-] THIS FILE ($GSHDW) IS VALID BUT CANNOT BE READ BY CURRENT USER\e[97m"
  fi 
else
  echo -e "\e[91m\n[-] THIS FILE ($GSHDW) DOES NOT EXIST\e[97m"
fi
