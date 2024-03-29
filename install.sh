#!/usr/bin/env bash

# install packages
sudo pacman -S \
	zsh \
	neovim \
	tmux \
	fzf \
	ripgrep \
	bat \
  kitty \
  feh \
  htop \
  npm \
  github-cli \
  telegram-desktop \
  brightnessctl \
  xclip \
  git-delta

# add zsh to shells
command -v zsh | sudo tee -a /etc/shells

# use zsh ad default shell
sudo chsh -s $(which zsh) $USER

# install zsh plugins
./.config/zsh/.zsh_plugins

# install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install languages
sudo npm i -g vscode-langservers-extracted typescript typescript-language-server
