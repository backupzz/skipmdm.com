#!/bin/bash

# Command to run -> sudo sh ./mdm-hostfile.sh

echo -e "Blocking MDM hosts..."

blockedDomains=("deviceenrollment.apple.com" "gdmf.apple.com" "iprofiles.apple.com" "mdmenrollment.apple.com")

for domain in "${blockedDomains[@]}"; do
    sudo echo "0.0.0.0 $domain" >> /etc/hosts
done

echo -e "Successfully blocked hosts\n"