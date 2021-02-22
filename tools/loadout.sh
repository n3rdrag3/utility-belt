#!/bin/bash

# Verify repos are updated to prevent broken packages
sudo apt-get update

# Verify Python 3 and Python 3 pip are installed
sudo apt-get -y install python3
sudo apt-get -y install python3-pip

# AutoRecon supporting packages
sudo apt-get -y install seclists curl enum4linux gobuster nbtscan nikto nmap onesixtyone oscanner smbclient smbmap smtp-user-enum snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf

# AutoRecon required Python3 modules - using apt-get installer for compatibilty
sudo apt-get -y install python3-colorama
sudo apt-get -y install python3-toml
sudo apt-get -y install python3-appdirs

# Change to /opt to keep things clean
cd /opt

# Install AutoRecon using Python3's pip installer
sudo python3 -m pip install git+https://github.com/Tib3rius/AutoRecon.git

# Clone PEASS
sudo git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git peas

# Clone LinEnum
sudo git clone https://github.com/rebootuser/LinEnum.git linenum

# Clone Linux Smart Enumeration
sudo git clone https://github.com/diego-treitos/linux-smart-enumeration.git lse

# Clone PowerSploit
sudo git clone https://github.com/PowerShellMafia/PowerSploit.git powersploit
