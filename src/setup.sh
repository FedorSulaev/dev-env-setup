#!/bin/zsh
cd $HOME
# Oh my zsh setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# Powerlevel 10k setup
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed 's|robbyrussell|powerlevel10k/powerlevel10k|' -i ~/.zshrc
p10k_plugins="git"
# Zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
p10k_plugins+=" zsh-syntax-highlighting"
# Zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
p10k_plugins+=" zsh-autosuggestions"
# Enable all p10k plugins
sed "s|plugins=(git)|plugins=($p10k_plugins)|" -i ~/.zshrc
# Setup complete
zsh
