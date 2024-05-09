FROM nixpkgs/nix:nixos-23.11-aarch64-linux
RUN nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager && \
    nix-channel --add https://nixos.org/channels/nixos-23.11 && \
    nix-channel --update
