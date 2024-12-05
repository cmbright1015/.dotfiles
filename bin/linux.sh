#!/bin/bash
##Check if Linux
if [ "$(uname)" != "Linux" ]; then
	echo "Error: Script only works on Linux" >> linuxsetup.log
	exit
fi

## .TRASH directory
mkdir -p ~/.TRASH

##Backup .nanorc
if [ -f ~/.nanorc ]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo ".nanorc renamed to .bup_nanorc" >> linuxsetup.log
fi

##Overwrite nanorc
cp ~/.dotfiles/etc/.nanorc ~/.nanorc

##Add source to .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

