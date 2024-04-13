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
# Tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp dev-env-setup/config/.tmux.conf $HOME/.tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins
# Tmuxifier init
init_line='eval "$(tmuxifier init -)"'
tmfr_path='export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"'
# Check if tmuxifier set up in .zshrc
if ! grep -qF "$init_line" ~/.zshrc; then
    # Append to .zshrc
    echo "$tmfr_path" >> ~/.zshrc
    echo "$init_line" >> ~/.zshrc
fi
# Lazygit
echo 'export PATH="$PATH:/usr/local/go/bin"' >> ~/.zshrc
echo 'export PATH="$PATH:$HOME/go/bin"' >> ~/.zshrc
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
