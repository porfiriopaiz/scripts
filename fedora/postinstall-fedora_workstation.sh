#! /bin/bash
# ADVERTENCIA
# Yo, porfirio, después de 4 años usando Fedora, sigo encontrando divertido
# hacer los post-install de Fedora, sólo que decí automatizarlo un poco.
#
# Usted es libre de usar, copiar, modificar y redistribuir este "script", pero
# no me responsabilizo de cualquier daño, directo o indirecto, de su equipo,
# su salud y paz mental, que se pueda derivar de la ejecución de este "script".
#
# Si se encuentra inconforme con los resultados de este "script" por favor
# no se moleste en notificarlo.
#
# Por el contrario, si encuentra que le ha sido de gran utilidad no dude en
# notificármelo a la cuenta de correo porfiriopaiz@gmail.com
# 
# Por favor no se moleste en solicitarme que añada nuevas funcionalidades.
# Pero si encuentra algún fallo y considera que debe ser corregido no dude
# en contactarme.
#
# Úselo bajo su propio riesgo.
#
# Compilado por Porfirio A. Paiz a.k.a porfirio
# Basado en el script post_install.sh de Neville A. Cross a.k.a yn1v
# http://www.taygon.com/fedora-post-install/
# http://www.taygon.com/docs/post_install.sh
#
# Para que funcione es necesario ejecutarlo con privilegios de root:
# su -c "./postinstall-fedora_workstation.sh"
#
# LICENCIA
# Este "scrip" post-install está liberado bajo la licencia:
# WTFPL – Do What the Fuck You Want to Public License
# http://www.wtfpl.net/txt/copying/
# http://es.wikipedia.org/wiki/WTFPL
#
#              DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
# Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>
#
# Everyone is permitted to copy and distribute verbatim or modified
# copies of this license document, and changing it is allowed as long
# as the name is changed.
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#
# Opcional
# Si usted quiere tener una experiencia agradable
# mientras usa Fedora, debería considerar añadir las siguientes lineas
# al archivo de configuración del gestor y administrador de paquetes dnf (/etc/dnf/dnf.conf)
echo 'fastestmirror=true' >> /etc/dnf/dnf.conf
echo 'deltarpm=false' >> /etc/dnf/dnf.conf
echo 'keepcache=true' >> /etc/dnf/dnf.conf
#
# Habilitando Repositorios
#
# Habilitando RPMFusion
# http://rpmfusion.org/
# http://rpmfusion.org/Configuration
#
# Habilitando RPMFusion Free y RPMFusion Non-free
su -c 'dnf install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
#
# Habilitando Repositorio de Google
#http://www.if-not-true-then-false.com/2010/install-google-chrome-with-yum-on-fedora-red-hat-rhel/
#
# Con este comando creamos el archivo google-chrome.repo
cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF
#
#
# Actualizamos
dnf update
#
# Linea de comandos
# Fast Version Control System
dnf install git
# Mercurial -- a distributed SCM
dnf install mercurial
# A utility for retrieving files using the HTTP or FTP protocols
dnf install wget
# Accelerated download client
dnf install axel
# Advanced Linux download manager
dnf install prozilla
# High speed download utility with resuming and segmented downloading
dnf install aria2
# Modular text mode IRC client with Perl scripting
dnf install irssi
# Linux Command-line interface for Telegram
dnf install telegram-cli
# Tools for building live CDs
dnf install livecd-tools
# Web browser running in both graphics and text mode
dnf install links
# A version of the VIM editor which includes recent enhancements
dnf install vim-enhanced
# A tree explorer plugin for the editor Vim
dnf install vim-nerdtree
# A tool for installing and managing Python packages
dnf install python-pip
# User-friendly text console file manager and visual shell
dnf install mc
# The PDF Tool Kit
dnf install pdftk
# A terminal multiplexer
dnf install tmux
# The ultimate status-line/prompt utility
dnf install powerline
# Powerline for tmux
dnf install tmux-powerline
# Powerline VIM plugin
dnf install vim-powerline
# Powerful interactive shell
dnf install zsh
# A friendly interactive shell
dnf install fish
# A small command-line program to download online videos
dnf install youtube-dl
# Top like utility for I/O
dnf install iotop
# Movie player playing most video formats and DVDs
dnf install mplayer
# A tool resembling top for network traffic
dnf install nethogs
# Hardware lister
dnf install lshw
# Very high compression ratio file archiver
dnf install p7zip
# Additional plugins for p7zip
dnf install p7zip-plugins
# Utility for extracting, testing and viewing RAR archives
dnf install unrar
# A utility for unpacking zip files
dnf install unzip
# Text-based disk usage viewer
dnf install ncdu
# Interactive process viewer
dnf install htop
# Performance monitoring for the Linux kernel
dnf install perf
# Creates an image of an ISO9660 file-system
dnf install genisoimage
# Generate QR 2D barcodes
dnf install qrencode
# Tool to check and undelete partition, PhotoRec recovers lost files
dnf install testdisk
# Fault tolerant "dd" utility for rescuing data from bad media
dnf install dd_rescue
# Data recovery tool trying hard to rescue data in case of read errors
dnf install ddrescue
# Recover files by "carving" them from a raw disk
dnf install foremost
# Tools for monitoring SMART capable hard disks
dnf install smartmontools
# A perl script for managing file archives of various types
dnf install atool
# A flexible console file manager
dnf install ranger
# A text-based user interface for Pidgin
#dnf install finch
#
# Graficos
# An easy to use drawing and image editing program
dnf install pinta
# Vector-based drawing program using SVG
dnf install inkscape
# GNU Image Manipulation Program
dnf install gimp
# Computer Assisted Design (CAD) Application
dnf install librecad
#
# Juegos
# Turnbased board strategy game (colonize an island)
dnf install pioneers
# GNOME Lightsoff game
dnf install lightsoff
#
# Accesorios
# A mass file renamer
dnf install pyrenamer
# Cross-platform password manager
dnf install keepassx
# A simple gpx viewer
dnf install gpx-viewer
# CD/DVD/Blu-ray burning application
dnf install k3b
# Graphical user interface for smartctl
dnf install gsmartcontrol
# GTK integration for Redshift
dnf install redshift-gtk
#
# Herramientas del Sistema
# A tool to customize advanced GNOME 3 options
dnf install gnome-tweak-tool
# Python utility to free disk space and improve privacy
dnf install bleachbit
# A liveusb creator
dnf install liveusb-creator
# Gnome Partition Editor
dnf install gparted
# Graphical hardware lister
dnf install lshw-gui
# Store and run multiple GNOME terminals in one window
dnf install terminator
# Creates a common metadata repository
#dnf install createrepo
#
# Correctores Ortograficos
dnf install hunspell
dnf install hunspell-en
dnf install hunspell-es
dnf install aspell
dnf install aspell-es
dnf install aspell-en
dnf install autocorr-es
dnf install autocorr-en
#
# Educacion
# An editor for  OpenStreetMap (OSM)
dnf install josm
# A user friendly Open Source Geographic Information System
dnf install qgis
#
# Oficina
# Evince backend for djvu files
dnf install evince-djvu.x86_64
# E-book converter and library manager
dnf install calibre
# A GUI for pdftk
dnf install pdfchain
#
# Command line utility program for merging PDF files
dnf install pdfmerge
#
#Internet
# Additional Java components for OpenJDK - Java browser plug-in and Web Start implementation
dnf install icedtea-web
# Download manager using GTK+ and libcurl
#dnf install uget
# A popular and easy to use graphical IRC (chat) client
#dnf install xchat
# A popular and easy to use graphical IRC (chat) client
#dnf install hexchat
# Internet Relay Chat client for GNOME
dnf install polari
# Voice chat suite aimed at gamers
dnf install mumble
# Jabber client written in PyGTK
dnf install gajim
# A Gtk+ based multiprotocol instant messaging client
dnf install pidgin
# Off-The-Record Messaging plugin for Pidgin
dnf install pidgin-otr
# Google Chrome
dnf install google-chrome-stable
# Mozilla Thunderbird mail/newsgroup client
dnf install thunderbird
# Authentication and encryption extension for Mozilla Thunderbird
dnf install thunderbird-enigmail
# Graphical interface for ModemManager
dnf install modem-manager-gui
# FTP, FTPS and SFTP client
dnf install filezilla
#
# Sonido y video
# The cross-platform open-source multimedia framework, player and server
dnf install vlc
# Desktop session recorder with audio and video
dnf install recordmydesktop
#
# Desarrollo
dnf groups install Development\ Libraries
dnf groups install C\ Development\ Tools\ and\ Libraries
dnf groups install Development\ Libraries
dnf groups install Development\ Tools
dnf groups install LibreOffice
dnf groups install Printing\ Support
dnf groups install Fedora\ Packager
dnf groups install RPM\ Development\ Tools
dnf groups install Standard
#
# Fuentes comunmente usadas en el proyecto fedora
dnf install abattis-cantarell-fonts aajohan-comfortaa-fonts google-droid-serif-fonts google-noto-fonts-common mgopen-modata-fonts
#
# Temas para plymouth
# Soy fan del tema 'details' para plymouth
# Si quiere habilitarlo descomente (borre el simbolo de numeral '#')
# de las siguiente dos lineas:
#plymouth-set-default-theme details
#dracut --force
#
# Más temas:
#dnf install plymouth-plugin-throbgress
#dnf install plymouth-plugin-space-flares
#dnf install plymouth-plugin-fade-throbber
#dnf install plymouth-plugin-script
#dnf install plymouth-theme-script
#dnf install plymouth-theme-fade-in
#dnf install plymouth-theme-solar
#dnf install plymouth-theme-spinfinity
#dnf install plymouth-theme-hot-dog
#dnf install plymouth-theme-spinner
