
Debian
====================
This directory contains files used to package bitnexd/bitnex-qt
for Debian-based Linux systems. If you compile bitnexd/bitnex-qt yourself, there are some useful files here.

## bitnex: URI support ##


bitnex-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bitnex-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bitnex-qt binary to `/usr/bin`
and the `../../share/pixmaps/bitnex128.png` to `/usr/share/pixmaps`

bitnex-qt.protocol (KDE)

