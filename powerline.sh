#!/bin/bash
# supa minimal powerline installation for zsh, works only for dnf package manager
sudo pacman -S zsh powerline-fonts zsh-theme-powerlevel9k -y
sudo chsh -s $(which zsh) $USER

# installing Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/shinzxc/dots 

cp dots/.zshrc  ~/.zshrc 

rm -rf dots/ && echo "cleaning shit"

echo "powerline installed"
