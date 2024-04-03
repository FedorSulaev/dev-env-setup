#!/bin/bash
yum update -y
yum install -y zsh util-linux-user git tar
chsh -s /usr/bin/zsh $USER
