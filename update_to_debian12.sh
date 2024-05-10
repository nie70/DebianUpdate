#!/bin/bash

# Step 1: Update current system
sudo apt update
sudo apt upgrade
sudo apt dist-upgrade

# Step 2: Update /etc/apt/sources.list to point to Debian 12 repositories
sudo sed -i 's/bullseye/bookworm/g' /etc/apt/sources.list

# Step 3: Update package lists for Debian 12
sudo apt update

# Step 4: Perform the distribution upgrade
sudo apt upgrade
sudo apt dist-upgrade

# Step 5: Clean up obsolete packages
sudo apt autoremove
sudo apt autoclean

# Step 6: Reboot the system to complete the upgrade
sudo reboot
