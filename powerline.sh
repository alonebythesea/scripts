#!/bin/bash
# supa minimal powerline installation for zsh, works only for dnf package manager
sudo dnf install -y zsh powerline-fonts
sudo chsh -s $(which zsh) $USER

# installing Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/shinzxc/dots

cp dots/.zshrc  ~/.zshrc

echo "cleaning shit"
rm -rf dots/

echo "powerline installed"
