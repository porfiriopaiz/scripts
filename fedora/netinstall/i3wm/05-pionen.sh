#! /bin/bash
cd ~/Downloads
wget -N -t 0 -c https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
su -c 'dnf install google-chrome-stable_current_x86_64.rpm'
su -c 'dnf check-upgrade'
cd ~/
