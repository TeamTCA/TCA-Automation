#!/data/data/com.termux/files/usr/bin/bash env

############################################
#  TCA Automation Environment Setup Script
############################################
# Update and upgrade
pkg up -y && pkg upgrade -y

# Switch permissive
su -c 'setenforce 0'

# Install dependencies
time apt install ruby pv toilet tsu git wget screenfetch figlet -y

# Install LOLCat via Ruby's package manager
gem install lolcat
