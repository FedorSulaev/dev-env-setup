FROM nixpkgs/nix:nixos-23.11-aarch64-linux
RUN nix-channel --add https://nixos.org/channels/nixos-23.11 && \
    nix-channel --update && \
    mkdir .config && \
    git clone https://github.com/FedorSulaev/env-config.git .config 
WORKDIR /.config
RUN nix develop --extra-experimental-features 'nix-command flakes'
