#!/usr/bin/env bash
set -eu

echo "Set default OSX configs"
./defaults.sh

brew -v > /dev/null && echo 'Homebrew is already present' || echo "Install homebrew" && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Installs Rosetta as needed on Apple Silicon Macs.
./install-rosetta-2.sh

echo "Install apps listed in Brewfile"
brew bundle install

echo "Copy all dotfiles into $HOME"
./sync.sh
