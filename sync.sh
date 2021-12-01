#!/usr/bin/env bash

# create a symlink to the dotfiles directory
# YAML='home:
#   ~/.zshrc: .zshrc
#   # ~/.zshenv: .zshenv
#   # ~/.gitconfig: .gitconfig
#   # ~/.gitignore_global: .gitignore_global
#   ~/.antigenrc: .antigenrc
#   # ~/.tmux.conf: .tmux.conf
#   # ~/.grc: .grc
#   # ~/.ssh/config: .ssh/config
#   # ~/.hammerspoon: .hammerspoon
#   # ~/.iterm2: iterm2
# '

# if [ "$(id -u)" != "0" ]; then 1>&2 echo Please execute the script using sudo. && exit 1; fi

# SCRIPT=$(
# cat <<EOF
# rm -Rf \(.key) && su daraff -c 'ln -s \(.key) \(.value)'
# EOF
# )

# yq r - 'home' -j <<<"$YAML" | jq -r "to_entries | .[] | \"$SCRIPT\""
# yq r - 'system' -j <<<"$YAML" | jq -r "to_entries | .[] | \"rm -Rf \(.key) && ln -s \(.key) \(.value)\""

rm -rf ~/.zshrc && su daraff -c 'ln -s ~/dev/daraff/dotfiles/.zshrc ~/.zshrc'
rm -rf ~/.antigenrc && su daraff -c 'ln -s ~/dev/daraff/dotfiles/.antigenrc ~/.antigenrc'
rm -rf ~/.gitconfig && su daraff -c 'ln -s ~/dev/daraff/dotfiles/.gitconfig ~/.gitconfig'
rm -rf ~/.gitignore_global && su daraff -c 'ln -s ~/dev/daraff/dotfiles/.gitignore_global ~/.gitignore_global'

# vs code
rm -rf ~/Library/Application\ Support/Code/User/keybindings.json && su daraff -c 'ln -s ~/dev/daraff/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json'
rm -rf ~/Library/Application\ Support/Code/User/settings.json && su daraff -c 'ln -s ~/dev/daraff/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json'
rm -rf ~/Library/Application\ Support/Code/User/tasks.json && su daraff -c 'ln -s ~/dev/daraff/dotfiles/vscode/tasks.json ~/Library/Application\ Support/Code/User/tasks.json'
