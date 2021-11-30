#!/usr/bin/env bash

# create a symlink to the dotfiles directory
YAML='
home:
  ~/.zshrc: .zshrc
  # ~/.zshenv: .zshenv
  # ~/.gitconfig: .gitconfig
  # ~/.gitignore_global: .gitignore_global
  ~/.antigenrc: .antigenrc
  # ~/.tmux.conf: .tmux.conf
  # ~/.grc: .grc
  # ~/.ssh/config: .ssh/config
  # ~/.hammerspoon: .hammerspoon
  # ~/.iterm2: iterm2

'

if [ "$(id -u)" != "0" ]; then 1>&2 echo Please execute the script using sudo. && exit 1; fi

SCRIPT=$(
cat <<EOF
rm -Rf \(.key) && su daraff -c 'ln -s \(.key) \(.value)'
EOF
)

yq r - 'home' -j <<<"$YAML" | jq -r "to_entries | .[] | \"$SCRIPT\""
# yq r - 'system' -j <<<"$YAML" | jq -r "to_entries | .[] | \"rm -Rf \(.key) && ln -s \(.key) \(.value)\""
