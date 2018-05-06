#! /bin/bash
dnf clean all
dnf makecache
dnf upgrade
dnf --refresh check-update
dnf upgrade
reboot
