#!/bin/zsh
cd $HOME
# Oh my zsh setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
cp dev-env-setup/config/.zshrc $HOME/
# Powerlevel 10k setup
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# Tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp dev-env-setup/config/.tmux.conf $HOME/
~/.tmux/plugins/tpm/bin/install_plugins
# Lazygit
git clone https://github.com/jesseduffield/lazygit.git
cd lazygit
/usr/local/go/bin/go install
cd $HOME
# Nvim
git clone https://github.com/neovim/neovim
git checkout stable
cd neovim && git checkout stable && make CMAKE_BUILD_TYPE=RelWithDebInfo
make install
cd $HOME
# Setup complete
zsh
