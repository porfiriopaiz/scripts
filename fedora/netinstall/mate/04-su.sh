#! /bin/bash
# Development Tools
dnf group install c-development
dnf group install development-libs
dnf group install development-tools
dnf group install rpm-development-tools
dnf group install fedora-packager
dnf install fedora-review
dnf install git
dnf install git-subtree
dnf install automake gcc gcc-c++ kernel-devel cmake
dnf install dotnet
dnf install monodevelop
dnf install golang
dnf install nodejs
dnf install rust
dnf install cargo
dnf install python-devel
dnf install python3-devel
dnf install python3-wheel
dnf install python2-virtualenv
dnf install python3-virtualenv
dnf install python3-virtualenvwrapper
dnf install python3-pip
dnf install python3-flake8
dnf install python3-pytest
dnf install python3-pygments
# Command line tools
dnf install NetworkManager-tui
dnf install xclip
dnf install wget
dnf install axel
dnf install irssi
dnf install livecd-tools
dnf install links
dnf install w3m w3m-img
dnf install vim-enhanced
dnf install vim-nerdtree
dnf install mc
dnf install tmux
dnf install powerline
dnf install tmux-powerline
dnf install vim-powerline
dnf install youtube-dl
dnf install iotop
dnf install nethogs
dnf install lshw
dnf install p7zip
dnf install p7zip-plugins
dnf install unar
dnf install unrar
dnf install unzip
dnf install atool
dnf install ncdu
dnf install ranger
dnf install htop
dnf install perf
dnf install qrencode
dnf install dd_rescue
dnf install ddrescue
dnf install foremost
dnf install pv
dnf install hunspell
dnf install hunspell-en
dnf install hunspell-es
dnf install aspell
dnf install aspell-es
dnf install aspell-en
dnf install autocorr-es
dnf install autocorr-en
# Graphical Design
dnf install blender
dnf install darktable
dnf install pinta
dnf install inkscape
dnf install krita
dnf install gimp
dnf install gimp-data-extras
dnf install gimp-dbp
dnf install gimp-dds-plugin
dnf install gimp-elsamuko
dnf install gimp-focusblur-plugin
dnf install gimp-fourier-plugin
dnf install gimpfx-foundry.noarch
dnf install gimp-gap
dnf install gimp-high-pass-filter
dnf install gimp-layer-via-copy-cut
dnf install gimp-lensfun
dnf install gimp-lqr-plugin
dnf install gimp-luminosity-masks
dnf install gimp-paint-studio
dnf install gimp-resynthesizer
dnf install gimp-save-for-web
dnf install gimp-wavelet-decompose
dnf install gimp-wavelet-denoise-plugin
dnf install gmic-gimp
dnf install GREYCstoration-gimp
# Video Edition
dnf install ffmpeg
dnf install kdenlive
dnf install openshot
dnf install openssh-askpass
# Fonts
dnf install adobe-source-code-pro-fonts
dnf install abattis-cantarell-fonts
dnf install aajohan-comfortaa-fonts
dnf install google-croscore-arimo-fonts
dnf install google-droid-serif-fonts
dnf install google-noto-fonts-common
dnf install mgopen-modata-fonts
dnf install mozilla-fira-*
dnf install mpv
dnf install corebird
# Instant Messaging
dnf install gajim python3-axolotl python3-axolotl-curve25519 python3-qrcode
dnf install telegram-desktop
# Web Browsers
dnf group install firefox
dnf install chromium-freeworld
dnf install transmission
# Accessories
dnf install keepassxc
dnf install flatpak
dnf install kde-connect
dnf install firewall-config
dnf install gitg
dnf install gparted
dnf install pyrenamer
dnf install gpx-viewer
dnf install bleachbit
dnf install mediawriter
dnf install lshw-gui
dnf install josm
dnf install calibre
dnf install icedtea-web
dnf install mumble
dnf install thunderbird
dnf install thunderbird-enigmail
dnf install modem-manager-gui
dnf install gnome-disk-utility
# Pygame Development Environment
# dnf group install sugar-desktop-environment
# dnf install install python2-decorator webkitgtk4 sugar-runner gnome-builder devhelp gettext-devel autoconf-archive
# dnf install csound-python2-csound-devel
dnf install gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel git python3-cairo-devel cairo-gobject-devel gobject-introspection-devel
dnf install sqlite-analyzer
dnf install sqlitebrowser
dnf install icaro
dnf install arduino
dnf install scratch
dnf install gtkhash3
dnf install policycoreutils-gui
dnf install setools-gui
dnf install aircrack-ng
# Installed from Fedora COPR
dnf install remarkable
dnf install ghostwriter
# Installed for Virtualization
dnf group install --with-optional virtualization
dnf install qemu
dnf install libguestfs-tools
dnf install python2-libguestfs python3-libguestfs
dnf install qemu-img libvirt libvirt-python libvirt-client
# Containers tools
dnf install podman
dnf install docker
dnf install docker-compose
dnf install fedora-dockerfiles
dnf install sen
dnf install vagrant
dnf install vagrant-libvirt
# Installed for Isolation
dnf install policycoreutils-sandbox policycoreutils-python-utils
dnf install gvfs-*
# Text Composition
dnf group install libreoffice
dnf install texworks
dnf install perl-XML-LibXML
dnf install perl-XML-SemanticDiff
dnf install rpm-build cabextract ttmkfdir
dnf install arm-image-installer
dnf install python3-markdown python3-pdfkit wkhtmltopdf
dnf install python-scapy
dnf install python3-scapy
# Text Editors and IDE
dnf install codium
dnf install thonny
dnf install python3-idle
# Look and feel themes
dnf install arc-theme
dnf install gnome-icon-theme gnome-icon-theme-extras gnome-icon-theme-legacy gnome-icon-theme-symbolic
# File Systems
dnf install exfat-utils
dnf install fuse-exfat
dnf install fuse-sshfs
dnf install rawtherapee
dnf install tuned
dnf install wavemon
dnf install ansible
dnf install meld
dnf install nload
dnf install tig
dnf install cantata
dnf install caddy
dnf install cockpit
dnf install cockpit-bridge
dnf install fortune-mod
dnf install syncthing-gtk
