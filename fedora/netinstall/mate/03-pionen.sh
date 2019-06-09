#! /bin/bash
dnf clean all
dnf makecache
gsettings set org.mate.caja.preferences default-sort-order type
gsettings set org.mate.Marco.general center-new-windows true
gsettings set org.mate.Marco.general allow-tiling true
gsettings set org.mate.background show-desktop-icons false
gsettings set org.mate.media-handling automount-open false
mkdir ~/git_repos
mkdir ~/projects
su -c 'dnf -y remove xfburn'
su -c 'dnf -y remove exaile parole'
su -c 'dnf -y remove parole'
su -c 'dnf -y remove hexchat'
su -c 'dnf -y remove dnfdragora'
su -c 'dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
su -c 'dnf -y install fedora-workstation-repositories'
su -c 'dnf -y install fedora-repos-rawhide'
# Enable COPR for remarkable and ghostwriter
su -c 'dnf -y copr enable neteler/remarkable'
su -c 'dnf -y copr enable philfry/gajim'
su -c 'dnf -y copr enable dani/qgis'
su -c 'dnf copr enable @dotnet-sig/dotnet'

# Refreshes the cache
su -c 'dnf check-update'
