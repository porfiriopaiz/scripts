#! /bin/bash
dnf group install mate-desktop-environment
dnf group install "Common NetworkManager Submodules"
dnf group install "Core"
dnf group install "Dial-up Networking Support"
dnf group install "Fonts"
dnf group install "Guest Desktop Agents"
dnf group install "Hardware Support"
dnf group install "Multimedia"
dnf group install "Standard"
dnf group install base-x
dnf group install "Input Methods"
dnf install i3
dnf install lightdm-gtk
systemctl set-default graphical.target
systemctl enable lightdm.service
reboot
