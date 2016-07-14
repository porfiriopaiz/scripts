#! /bin/bash
su -c 'dnf -y update'
sync
sleep 60
poweroff
