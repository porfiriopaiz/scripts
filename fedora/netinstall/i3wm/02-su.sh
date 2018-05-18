#! /bin/bash
dnf -y group install networkmanager-submodules
dnf -y group install core
dnf -y group install dial-up
dnf -y group install fonts
dnf -y group install guest-desktop-agents
dnf -y group install hardware-support
dnf -y group install multimedia
dnf -y group install standard
dnf -y group install base-x
dnf -y group install input-methods
dnf -y install fedora-icon-theme
dnf -y install gnome-icon-theme
dnf -y install gnome-icon-theme-extras
dnf -y install i3
dnf -y install lightdm-gtk
systemctl set-default graphical.target
systemctl enable lightdm.service
reboot
