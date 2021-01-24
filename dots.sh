#!/bin/bash

cd ~/workspace/dots
if [ ! -d config ]; then
  mkdir config
fi
cp -f ~/.zshrc ./.zshrc
cp -f ~/"Library/Application Support/Code/User/settings.json" ./vscode/settings.json
cp -rf ~/.zsh/*.zsh ./.zsh
cp -f ~/.config/starship.toml ./config/
git add .
git commit -S -m "`date`"
git push origin master