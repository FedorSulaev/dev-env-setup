#!/bin/bash
# Packages
yum update -y
yum install -y zsh util-linux-user git tar libevent-devel ncurses-devel gcc make bison pkg-config automake
cd $HOME
# Tmux - default is 1.8
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure
make && make install
# Shell
chsh -s /usr/bin/zsh $USER
