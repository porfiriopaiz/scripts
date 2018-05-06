#! /bin/bash
echo 'fastestmirror=true' >> /etc/dnf/dnf.conf
echo 'deltarpm=false' >> /etc/dnf/dnf.conf
echo 'keepcache=true' >> /etc/dnf/dnf.conf
systemctl disable dnf-makecache.service
systemctl disable dnf-makecache.timer
reboot
