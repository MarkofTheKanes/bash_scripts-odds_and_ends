#!/bin/bash

# set -eu -o pipefail # fail on error and report it, debug all lines

#sudo -n true
#test $? -eq 0 || exit 1 "you should have sudo privilege to run this script"

## uypdate all apps first
sudo apt update -y

## Install apps requiring adding repos
# install ulauncher
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt install ulauncher


echo installing the must-have snap apps
while read -r p ; do sudo apt-get install -y $p ; done < <(cat << "EOF"
	flatpak
	timegnomeshift
	gnome-tweaks
	chromium-ffmpeg
	gnome-software-plugin-flatpak
EOF
)


## others
# curl

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo installing the must-have flathub apps
while read -r p ; do sudo flatpak install flathub $p -y ; done < <(cat << "EOF"
	net.giuspen.cherrytree
	org.gnome.Cheese
	org.gnome.DejaDup
	com.mattjakeman.ExtensionManager
	org.keepassxc.KeePassXC
	com.opera.Opera
	org.signal.Signal
	com.slack.Slack
	com.visualstudio.code
	us.zoom.Zoom
	org.gnome.SimpleScan
	org.gnome.Evince
	org.gnome.SoundRecorder
	org.libreoffice.LibreOffice

EOF
)
## others
	# org.gimp.GIMP
	# io.gitlab.adhami3310.Converter
	# org.gnucash.GnuCash
	# com.visualstudio.code

echo installing the nice-to-have pre-requisites
echo you have 5 seconds to proceed ...
echo or
echo hit Ctrl+C to quit
echo -e "\n"
sleep 6

sudo apt-get install -y tig
