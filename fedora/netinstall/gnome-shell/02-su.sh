#! /bin/bash
dnf group install mate-desktop-environment
systemctl set-default graphical.target
systemctl enable lightdm.service
reboot
