#!/bin/bash
# Packages
yum update -y
yum install -y zsh util-linux-user git tar libevent-devel ncurses-devel gcc make bison pkg-config automake wget unzip gettext
cd $HOME
# Tmux - default is 1.8
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure
make && make install
cd $HOME
# Go
rm -rf /usr/local/go
wget -P /usr/local https://go.dev/dl/go1.22.2.linux-arm64.tar.gz
tar -C /usr/local -xzf /usr/local/go1.22.2.linux-arm64.tar.gz
# Cmake
wget -P /opt https://github.com/Kitware/CMake/releases/download/v3.29.2/cmake-3.29.2-linux-aarch64.sh
cd /opt
sh cmake-3.29.2-linux-aarch64.sh --skip-license
ln -s /opt/bin/* /usr/local/bin
cd $HOME
# Shell
chsh -s /usr/bin/zsh $USER
