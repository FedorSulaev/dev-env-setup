#!/bin/zsh
cd $HOME
# Oh my zsh setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# Powerlevel 10k setup
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed 's|robbyrussell|powerlevel10k/powerlevel10k|' -i ~/.zshrc
# Setup complete
zsh
