#!/bin/bash

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh #Zoxide install
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh #Atuin install
sudo apt install -y tldr fzf bat screen fish cargo snapd git fd-find glances #
cargo install eza #Eza install
cargo install --git https://github.com/quantumsheep/sshs #sshs install
curl -sL portal.spatiumportae.com | sudo bash #Portall install
echo /usr/bin/fish | sudo tee -a /etc/shells #fish install
chsh -s /usr/bin/fish #Changing shell to fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher #Install fisher fish package manager
fisher install PatrickF1/fzf.fish #install fzf for fish
wget https://raw.githubusercontent.com/grinchdubs/dotfiles/main/private_dot_config/private_fish/config.fish #fish config download
mv config.fish .config/fish/config.fish #
wget https://github.com/localsend/localsend/releases/download/v1.14.0/LocalSend-1.14.0-linux-x86-64.deb #local send download
dpkg -i LocalSend-1.14.0-linux-x86-64.deb #local send install
wget https://gist.githubusercontent.com/joaopizani/2718397/raw/9e2560b77e1e1298ef24be16297d853f9885b20d/.screenrc #screen config download
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime #vim config download
sh ~/.vim_runtime/install_awesome_vimrc.sh #vim config install
echo "run fish_add_path /home/grnch/.cargo/bin to add cargo to PATH" #add cargo as path
fish #run fish shell

