#!/bin/bash
set -e

rm -rf ~/g3_setup_tmp
mkdir ~/g3_setup_tmp

echo
echo Update and upgrade from all repositories
apt-get update -y
apt-get upgrade -y

echo
echo Install miscellaneous stuff
apt-get -y install acidrip audacity autoconf automake build-essential ccrypt checkinstall curl dia dosbox ec2-api-tools eclipse firefox ffmpeg frotz g++ gettext gimp git-core gitg gnome-rdp gnutls-bin gparted geeqie hfsprogs inform inotify-tools irssi k3b lame latex2html libfaac-dev libgif-dev libgtk2.0-dev libjpeg-dev libncurses-dev libnotify-bin libopencore-amrnb-dev libpng-dev libpq-dev libreadline6-dev libsqlite3-dev libssl-dev libtheora-dev libtiff-dev libtool libusb-dev libvorbis-dev libx11-dev libxine1-ffmpeg libxpm-dev libxslt-dev lubuntu-desktop lynx lyx markdown nautilus net-tools openssh-server pdftk php5-cli php5-curl postgresql pwgen python-pip rdesktop shtool subversion terminator texinfo tmux tofrodos vim xclip xsane xscreensaver xscreensaver-gl xtightvncviewer

echo
echo Configuring swapcaps on resume
rm -f /etc/pm/sleep.d/swapcaps
ln -s $(pwd)/conf/bin/swapcaps /etc/pm/sleep.d/swapcaps
chmod a+x /etc/pm/sleep.d/swapcaps

echo
echo Configuring X
cp $(pwd)/conf/x/xorg.conf /etc/X11/xorg.conf

./install_sbcl.sh
./install_emacs.sh
./install_rsense.sh

rm -rf ~/g3_setup_tmp
