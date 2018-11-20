# My very own "scripts"

This repo contains my very own scripts for management of post install task and
other stuff.

### Chess

Record of all the week in chess files I had downloaded.

### Fedora

Fedora contains some scripts form "automathing" some boring stuff such as
post-install and cleaning cache.

### kamino

This folder contains some scripts for creating and burning iso files that
serves as a backup.

### osm

Files for automathing boring stuff such as getting the most recent version from
josm.

## Stuff to Back Up!

### ``dnf`` history

./fedora/dnf_full_history.sh

### dotfiles

Back up them on the git_repos/dotfiles/ repo.

* .vimrc
* .tmux.conf
* .bashrc
* .irssi/
* .config/powerline/config.json
* .config/JOSM/preferences.xml

### Web Browsers

#### Firefox

* Bookmarks
* Add-ons list

#### Chromium

* Bookmarks
* Add-ons list
* Settings Screenshots

### git_repos

* Generate a list of all the cloned repos URL's
  * origin
  * upstream
* Generate a script for:
  * Backing up in tar files
  * Backing up URL's
  * Cloning them back
  * Pushing local changes to origin
* Local uncommited changes must be commited to a `tmp` branch and pushed to
    origin.
* Same for `~/projects/`

### GPG

* back up gpg key

### ssh keys

* .ssh/pionen*

### Gajim

* .local/share/gajim/downloads
* Plugin list
* Export log history

### Pipsi installed stuff

* sphinx
* pipsi
* pew
* black
* pip

### rsync-ing directories

```sh
rsync --verbose --archive --update --progress --partial origin/ destiny/
```

Also keep in mind:

```sh
rsync --verbose --archive --progress --partial --delete --backup --backup-dir=backup dirA/ dirB/
```

```sh
rsync --verbose --archive --update --progress --partial --delete --backup --backup-dir=backup dirA/ dirB/
```

```sh
rsync --verbose --archive --update --progress --partial --delete --backup --backup-dir=$PWD/bckp_$(date +%y%m%d%H%M) dirB/ dirC
```

```sh
rsync --verbose --archive --update --progress --partial --delete --backup --backup-dir=$HOME/bckp_$(date +%y%m%d%H%M) dirB/ dirC
```

--stats
--human-readable
--size-only
--ignore
--delete-before
--delete-after...

### Custom shortcuts

#### Mate Desktop

* GNOME Terminal Mod4+Return
* Lock Screen Mod4+L
* Run Application Mod4+Space
* Toggle maximization state Mod4+Up
* Restore window Mod4+Down
* Move window to the center of screen Mod4+C

### Screenshot from the desktop

* Save apps on the top

### Repos

* Installed repos
* Enabled repos
* Installed apps from repos
* dnf full history
* User installed apps

### Flatpaks

* Apps installed
* Repos enabled
