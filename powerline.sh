#!/bin/bash
sudo dnf install -y zsh powerline-fonts
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/shinzxc/dots
cp dots/.zshrc  ~/.zshrc	
echo "powerline installed"
