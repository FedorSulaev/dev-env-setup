#!/bin/bash
yum update -y
yum install -y zsh util-linux-user git tar tmux
chsh -s /usr/bin/zsh $USER
