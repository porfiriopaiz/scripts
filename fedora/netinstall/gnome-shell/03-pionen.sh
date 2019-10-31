#! /bin/bash
dnf clean all
dnf makecache
gsettings set org.gnome.nautilus.preferences default-sort-order type
mkdir ~/git_repos
mkdir ~/projects
su -c 'dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
su -c 'dnf check-upgrade'
