#!/bin/bash

# Command to run -> sudo sh ./mdm-config.sh

sudo rm /var/db/ConfigurationProfiles/Settings/.cloudConfigHasActivationRecord
sudo rm /var/db/ConfigurationProfiles/Settings/.cloudConfigRecordFound

sudo touch /var/db/.AppleSetupDone
sudo touch /var/db/ConfigurationProfiles/Settings/.cloudConfigProfileInstalled
sudo touch /var/db/ConfigurationProfiles/Settings/.cloudConfigRecordNotFound

sudo launchctl disable system/com.apple.ManagedClient.enroll
sudo launchctl disable system/com.apple.mdmclient.daemon
sudo launchctl disable system/com.apple.mdmclient
sudo launchctl disable system/com.apple.devicemanagementclient.teslad