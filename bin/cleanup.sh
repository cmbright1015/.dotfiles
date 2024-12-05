#!/bin/bash
##Remove nanorc
rm -f ~/.nanorc

sed -i '\|source ~/.dotfiles/etc/bashrc_custom|d' ~/.bashrc

rm -rf ~/.TRASH
