#! /bin/bash
dnf clean all
dnf makecache
su -c 'dnf install caja'
gsettings set org.mate.caja.preferences default-sort-order type
mkdir ~/git_repos
mkdir ~/projects
xdg-user-dirs-update
su -c 'dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
su -c 'dnf check-update'
