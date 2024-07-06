#!/bin/bash

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
sudo apt install -y tldr fzf bat screen fish timeshift cargo fd snapd
cargo install eza
echo /usr/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
fish
fish_add_path /home/grnch/.cargo/bin
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
wget https://raw.githubusercontent.com/grinchdubs/dotfiles/main/private_dot_config/private_fish/config.fish
mv config.fish ./config/fish/config.fish
sudo snap install localsend
wget https://gist.githubusercontent.com/joaopizani/2718397/raw/9e2560b77e1e1298ef24be16297d853f9885b20d/.screenrc
