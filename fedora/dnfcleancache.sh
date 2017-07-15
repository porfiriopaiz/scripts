#! /bin/bash
su -c 'dnf clean dbcache expire-cache metadata'
su -c 'dnf makecache'
