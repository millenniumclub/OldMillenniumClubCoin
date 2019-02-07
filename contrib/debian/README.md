
Debian
====================
This directory contains files used to package millenniumclubd/millenniumclub-qt
for Debian-based Linux systems. If you compile millenniumclubd/millenniumclub-qt yourself, there are some useful files here.

## millenniumclub: URI support ##


millenniumclub-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install millenniumclub-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your millenniumclub-qt binary to `/usr/bin`
and the `../../share/pixmaps/millenniumclub128.png` to `/usr/share/pixmaps`

millenniumclub-qt.protocol (KDE)

