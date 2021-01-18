#!/bin/sh

# Remove old journals
journalctl --vacuum-size=1G

#update distro packages theme clean up updates
apt-get update && sudo apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y
apt-get autoclean -y
updatedb
