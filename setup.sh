#!/bin/bash

# XOSINT Automated Setup Script for Termux

echo -e "\e[96m"
echo " ██╗  ██╗ ██████╗ ███████╗██╗███╗   ██╗████████╗"
echo " ╚██╗██╔╝██╔═══██╗██╔════╝██║████╗  ██║╚══██╔══╝"
echo "  ╚███╔╝ ██║   ██║███████╗██║██╔██╗ ██║   ██║   "
echo "  ██╔██╗ ██║   ██║╚════██║██║██║╚██╗██║   ██║   "
echo " ██╔╝ ██╗╚██████╔╝███████║██║██║ ╚████║   ██║   "
echo " ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝╚═╝  ╚═══╝   ╚═╝  "
echo -e "\e[93m        Advanced OSINT Framework Setup"
echo -e "\e[0m"

echo -e "\e[90m[*] Updating repositories...\e[0m"
pkg update -y && pkg upgrade -y

echo -e "\e[90m[*] Installing Python and Termux API...\e[0m"
pkg install python termux-api iproute2 -y

echo -e "\e[90m[*] Installing Python requirements...\e[0m"
pip install -r requirements.txt

echo -e "\e[90m[*] Granting storage permissions...\e[0m"
termux-setup-storage

echo -e "\e[92m[✓] Setup Complete!\e[0m"
echo -e "\e[93m[!] Make sure you have the 'Termux:API' app installed from F-Droid.\e[0m"
echo -e "\e[96m[>] To start XOSINT, run: \e[93mpython xosint.py\e[0m\n"
