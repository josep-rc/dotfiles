#!/bin/sh

echo "Creating symlinks"

ln -sf ~/dev/dotfiles/.gitconfig ~/

ln -sf ~/dev/dotfiles/.gitignore ~/

ln -sf ~/dev/dotfiles/.zshrc ~/

ln -sf ~/dev/dotfiles/.vimrc ~/.vim/vimrc

echo "Done!"

