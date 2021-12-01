########### PATH ##########################
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export PATH=${PATH}:/usr/local/Cellar/imagemagick/6.9.2-6/bin
export PATH=${PATH}:~/.nvm/current/bin
export PATH=${PATH}:/opt/local/bin
export PATH=${PATH}:/opt/homebrew/bin
export PATH=${PATH}:./node_modules/.bin # use node binaries

########### NODE ##########################
export ENVIRONMENT=local
export NODE_ENV=local

############ Antigen ####################
# Load Antigen
source /opt/homebrew/Cellar/antigen/2.2.3/share/antigen/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc


############# Git Aliases #######################
# if [ -f /Users/DaRaFF/nzz/dev-tools/.aliases ]; then
#     . /Users/DaRaFF/nzz/dev-tools/.aliases
# fi


########### GOTO Commands ###########
# upstream
alias golde='cd ~/dev/livingdocs/livingdocs-editor;'
alias golds='cd ~/dev/livingdocs/livingdocs-server;'
alias goldf='cd ~/dev/livingdocs/livingdocs-framework;'
# service
alias goldse='cd ~/dev/livingdocs/livingdocs-service-editor;'
alias goldss='cd ~/dev/livingdocs/livingdocs-service-server;'
# nzz
alias gonzze='cd ~/nzz/livingdocs-editor;'
alias gonzzs='cd ~/nzz/livingdocs-api;'
# bluewin
alias gobe='cd ~/bluewin/livingdocs-bluewin-editor;'
alias gobs='cd ~/bluewin/livingdocs-bluewin-server;'
alias gobd='cd ~/bluewin/livingdocs-bluewin-delivery;'
alias goba='cd ~/bluewin/livingdocs-bluewin-ansible;'
alias gosctvdelivery='cd ~/dev/livingdocs/livingdocs-swisscom-tv-delivery;'
alias gosctvdesign='cd ~/bluewin/livingdocs-design-swisscom-tv;'
# blz
alias goblze='cd ~/blz/livingdocs-editor-blz;'
alias goblzs='cd ~/blz/livingdocs-server-blz;'
alias goblzd='cd ~/blz/delivery-blz;'
# dumont
alias gode='cd ~/dumont/dumont-editor;'
alias gods='cd ~/dumont/dumont-server;'
# swisscom chch
alias goldch='cd ~/swisscom/livingdocs;'
# dotfiles
alias godot='cd ~/dev/daraff/dotfiles'
######################





########### Aliases ###########
# alias ssh='~/livingdocs/infrastructure/ssh'
alias v='code .'
# alias redis-cli='docker run -it --network="host" --rm redis redis-cli'
# unalias pbcopy
# unalias pbpaste
######################






###################### Livingdocs Server auto completion ######################
_livingdocs-server_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" livingdocs-server --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _livingdocs-server_yargs_completions livingdocs-server






###################### GCloud SDK ######################
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/google-cloud-sdk/completion.zsh.inc'; fi





########### What is that? ##########################
export NVM_SYMLINK_CURRENT=true
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
setopt no_share_history
