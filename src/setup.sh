#!/bin/zsh
cd $HOME
# Oh my zsh setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# Powerlevel 10k setup
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed 's|robbyrussell|powerlevel10k/powerlevel10k|' -i ~/.zshrc
# Zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed 's|plugins=(git)|plugins=(git zsh-syntax-highlighting)|' -i ~/.zshrc
# Setup complete
zsh
