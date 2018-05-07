#! /bin/bash
dnf group install workstation-product-environment
systemctl set-default graphical.target
systemctl enable gdm.service
reboot
