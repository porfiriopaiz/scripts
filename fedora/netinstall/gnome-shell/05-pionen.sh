#! /bin/bash
cd ~/Downloads
wget -N -t 0 -c https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
su -c 'dnf install google-chrome-stable_current_x86_64.rpm'
su -c 'dnf check-update '
cd ~/
su -c 'dnf install tracker-preferences'
mkdir ~/.config/autostart
cp /etc/xdg/autostart/tracker* ~/.config/autostart
cd ~/.config/autostart
sed -i 's/X-GNOME-Autostart-enabled=true/X-GNOME-Autostart-enabled=false/' tracker*
tracker status
tracker reset --hard
gsettings set org.gnome.software download-updates false
su -c 'systemctl mask packagekit.service'
