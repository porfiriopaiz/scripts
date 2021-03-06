#! /bin/bash
dnf -y group install c-development
dnf -y group install development-libs
dnf -y group install development-tools
dnf -y group install rpm-development-tools
dnf -y group install fedora-packager
dnf -y install fedora-review
dnf -y install flatpak
dnf -y install git
dnf -y install git-subtree
dnf -y install xclip
dnf -y install automake gcc gcc-c++ kernel-devel cmake
dnf -y install monodevelop
dnf -y install golang
dnf -y install nodejs
dnf -y install rust
dnf -y install cargo
dnf -y install python-devel
dnf -y install python3-devel
dnf -y install python3-wheel
dnf -y install python2-virtualenv
dnf -y install python3-virtualenv
dnf -y install python3-virtualenvwrapper
dnf -y install python3-pip
dnf -y install python3-flake8
dnf -y install python3-pytest
dnf -y install hunspell
dnf -y install hunspell-en
dnf -y install hunspell-es
dnf -y install aspell
dnf -y install aspell-es
dnf -y install aspell-en
dnf -y install autocorr-es
dnf -y install autocorr-en
dnf -y install wget
dnf -y install axel
dnf -y install irssi
dnf -y install livecd-tools
dnf -y install links
dnf -y install vim-nerdtree
dnf -y install mc
dnf -y install tmux
dnf -y install powerline
dnf -y install tmux-powerline
dnf -y install vim-powerline
dnf -y install youtube-dl
dnf -y install iotop
dnf -y install nethogs
dnf -y install lshw
dnf -y install p7zip
dnf -y install p7zip-plugins
dnf -y install unrar
dnf -y install unzip
dnf -y install unar
dnf -y install atool
dnf -y install ncdu
dnf -y install ranger
dnf -y install htop
dnf -y install perf
dnf -y install qrencode
dnf -y install dd_rescue
dnf -y install ddrescue
dnf -y install foremost
dnf -y install pinta
dnf -y install inkscape
dnf -y install gimp
dnf -y install gimp-data-extras
dnf -y install gimp-dbp
dnf -y install gimp-dds-plugin
dnf -y install gimp-elsamuko
dnf -y install gimp-focusblur-plugin
dnf -y install gimp-fourier-plugin
dnf -y install gimpfx-foundry.noarch
dnf -y install gimp-gap
dnf -y install gimp-high-pass-filter
dnf -y install gimp-layer-via-copy-cut
dnf -y install gimp-lensfun
dnf -y install gimp-lqr-plugin
dnf -y install gimp-luminosity-masks
dnf -y install gimp-paint-studio
dnf -y install gimp-resynthesizer
dnf -y install gimp-save-for-web
dnf -y install gimp-wavelet-decompose
dnf -y install gimp-wavelet-denoise-plugin
dnf -y install gmic-gimp
dnf -y install GREYCstoration-gimp
dnf -y install pyrenamer
dnf -y install gpx-viewer
dnf -y install bleachbit
dnf -y install mediawriter
dnf -y install lshw-gui
dnf -y install josm
dnf -y install calibre
dnf -y install icedtea-web
dnf -y install mumble
dnf -y install thunderbird
dnf -y install thunderbird-enigmail
dnf -y install modem-manager-gui
dnf -y install abattis-cantarell-fonts
dnf -y install aajohan-comfortaa-fonts
dnf -y install google-droid-serif-fonts
dnf -y install google-noto-fonts-common
dnf -y install mgopen-modata-fonts
dnf -y install mozilla-fira-*
dnf -y install ffmpeg
dnf -y install mpv
dnf -y install telegram-desktop
dnf -y install corebird
dnf -y install gajim python3-axolotl python3-axolotl-curve255
dnf -y install chromium-vaapi
dnf -y install keepassxc
dnf -y install gnome-terminal
dnf -y install gnome-disk-utility
dnf -y group install firefox
dnf -y install xbacklight
dnf -y install network-manager-applet
dnf -y install i3lock
dnf -y install transmission
dnf -y install fedora-workstation-repositories
dnf -y install fedora-repos-rawhide
dnf -y group install libreoffice
dnf -y install libreoffice-gallery-vrt-network-equipment
dnf -y install NetworkManager-tui
# Pygame Development Environment
# dnf -y group install sugar-desktop-environment
# dnf -y install install python2-decorator webkitgtk4 sugar-runner gnome-builder devhelp gettext-devel autoconf-archive
# dnf -y install csound-python2-csound-devel
#dnf -y install gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel git python3-cairo-devel cairo-gobject-devel gobject-introspection-devel
#dnf -y install icaro
#dnf -y install arduino
#dnf -y install scratch
dnf -y install gtkhash3
dnf -y install policycoreutils-gui
dnf -y install setools-gui
dnf -y install aircrack-ng
# Installed from Fedora COPR
dnf -y install remarkable
dnf -y install ghostwriter
# Installed for Virtualization
dnf -y group install --with-optional virtualization
dnf -y install qemu
dnf -y install libguestfs-tools python2-libguestfs python3-libguestfs
dnf -y install qemu-img libvirt libvirt-python libvirt-client
dnf -y install podman
dnf -y install docker
dnf -y install sen
# Installed for Isolation
dnf -y install policycoreutils-sandbox policycoreutils-python-utils
dnf -y install atril
dnf -y install file-roller
dnf -y install eom
dnf -y install pavucontrol
dnf -y install pluma
dnf -y install blueman
dnf -y install gvfs-*
dnf -y install gnome-screenshot
dnf -y install python3-pygments
dnf -y install texworks
dnf -y install w3m w3m-img
dnf -y install dconf-editor
dnf -y install perl-XML-LibXML
dnf -y install perl-XML-SemanticDiff
dnf -y install rpm-build cabextract ttmkfdir
dnf -y install arm-image-installer
dnf -y install lm_sensors
dnf -y install python3-markdown python3-pdfkit wkhtmltopdf
dnf -y install python-scapy
dnf -y install python3-scapy
dnf -y install dotnet
dnf -y install codium
dnf -y install arc-theme
dnf -y install blender
dnf -y install darktable
dnf -y install exfat-utils
dnf -y install filezilla
dnf -y install fuse-exfat
dnf -y install fuse-sshfs
dnf -y install kdenlive
dnf -y install krita
dnf -y install NetworkManager-openvpn-gnome
dnf -y install openshot
dnf -y install openssh-askpass
dnf -y install pv
dnf -y install rawtherapee
dnf -y install vagrant
dnf -y install vagrant-libvirt
dnf -y install virt-manager
dnf -y install wavemon
dnf -y install ansible
dnf -y install adobe-source-code-pro-fonts
dnf -y install borgbackup
dnf -y install gitg
dnf -y install meld
dnf -y install nload
dnf -y install tig
dnf -y install cockpit
dnf -y install cockpit-bridge
dnf -y install fortune-mod
dnf -y install sqlite-analyzer
dnf -y install sqlitebrowser
dnf -y install syncthing-gtk
