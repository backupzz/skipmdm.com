#!/bin/bash

# Command to run -> sudo sh ./mdm-hostfile.sh

echo -e "Blocking MDM hosts..."

grep -qxF '0.0.0.0 abc.def.ghi' /etc/hosts || echo "0.0.0.0 abc.def.ghi" >> /etc/hosts
grep -qxF '0.0.0.0 deviceenrollment.apple.com' /etc/hosts || echo "0.0.0.0 deviceenrollment.apple.com" >> /etc/hosts
grep -qxF '0.0.0.0 gdmf.apple.com' /etc/hosts || echo "0.0.0.0 gdmf.apple.com" >> /etc/hosts
grep -qxF '0.0.0.0 iprofiles.apple.com' /etc/hosts || echo "0.0.0.0 iprofiles.apple.com" >> /etc/hosts
grep -qxF '0.0.0.0 mdmenrollment.apple.com' /etc/hosts || echo "0.0.0.0 mdmenrollment.apple.com" >> /etc/hosts


echo -e "Successfully blocked hosts\n"

command cat /etc/hosts
