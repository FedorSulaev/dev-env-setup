#!/bin/bash
yum update -y
yum install -y zsh util-linux-user git
chsh -s /usr/bin/zsh $USER
