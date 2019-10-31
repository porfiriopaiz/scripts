#! /bin/bash
dnf clean all
dnf makecache
dnf upgrade
dnf --refresh check-upgrade
dnf upgrade
reboot
