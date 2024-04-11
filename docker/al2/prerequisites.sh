#!/bin/bash
# Packages
yum update -y
yum install -y zsh util-linux-user git tar libevent-devel ncurses-devel gcc make bison pkg-config automake wget
cd $HOME
# Tmux - default is 1.8
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure
make && make install
# Go
rm -rf /usr/local/go
wget -P /usr/local https://go.dev/dl/go1.22.2.linux-arm64.tar.gz
tar -C /usr/local -xzf /usr/local/go1.22.2.linux-arm64.tar.gz
# Shell
chsh -s /usr/bin/zsh $USER
