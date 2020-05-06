#!/data/data/com.termux/files/usr/bin/bash env

# Remove existing files
tsu -c 'find . -iname '*Automation.sh*' -exec rm -rf {} \;'

# Fetch the script and setup
tsudo wget https://raw.githubusercontent.com/TeamTCA/TCA-Automation/master/Automation.sh -O ./Automation.sh
tsu -c chmod a+x Automation.sh
tsu -c ./Automation.sh
