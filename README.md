**Applications**

[rTorrent](https://rakshasa.github.io/rtorrent/)
[ruTorrent](https://github.com/Novik/ruTorrent/)

**Description**

rTorrent is an ncurses-based torrent client that allows users to download and seed torrents from any source. ruTorrent is a web interface for rTorrent that lets you perform all the tasks you'd usually perform in a web browser.

**Build notes**

This image makes two major modifications to the base image:

1. Installs dhcpcd to run networking
2. Changes rTorrent's SCGI interface to run on a TCP socket

**Usage**

This image is not actually designed to be run with Docker. It is meant to be exported and run as a systemd-nspawn container.
More details on how exactly this should be done will be provided at a later date.

**Access application**

Connect to rTorrent's SCGI interface on `<host ip>:5000`.
Connect to ruTorrent's web interface on `<host ip>:80`.
