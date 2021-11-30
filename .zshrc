########### PATH ##########################
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export PATH=${PATH}:/usr/local/Cellar/imagemagick/6.9.2-6/bin
export PATH=${PATH}:~/.nvm/current/bin
export PATH=${PATH}:/opt/local/bin
export PATH=${PATH}:./node_modules/.bin # use node binaries

########### NODE ##########################
export ENVIRONMENT=local
export NODE_ENV=local

############ Antigen ####################
# Load Antigen
source /usr/local/share/antigen/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc


############# Git Aliases #######################
# if [ -f /Users/DaRaFF/nzz/dev-tools/.aliases ]; then
#     . /Users/DaRaFF/nzz/dev-tools/.aliases
# fi


########### GOTO Commands ###########
# upstream
alias golde='cd ~/livingdocs/livingdocs-editor;'
alias goldev='cd ~/livingdocs/livingdocs-editor; v'
alias golds='cd ~/livingdocs/livingdocs-server;'
alias goldsv='cd ~/livingdocs/livingdocs-server; v'
alias goldf='cd ~/livingdocs/livingdocs-framework;'
alias goldfv='cd ~/livingdocs/livingdocs-framework; v'
# service
alias goldse='cd ~/livingdocs/livingdocs-service-editor;'
alias goldsev='cd ~/livingdocs/livingdocs-service-editor; v'
alias goldss='cd ~/livingdocs/livingdocs-service-server;'
alias goldssv='cd ~/livingdocs/livingdocs-service-server; v'
# nzz
alias gonzze='cd ~/nzz/livingdocs-editor;'
alias gonzzev='cd ~/nzz/livingdocs-editor; v'
alias gonzzs='cd ~/nzz/livingdocs-api;'
alias gonzzsv='cd ~/nzz/livingdocs-api; v'
# bluewin
alias gobe='cd ~/bluewin/livingdocs-bluewin-editor;'
alias gobev='cd ~/bluewin/livingdocs-bluewin-editor; v'
alias gobs='cd ~/bluewin/livingdocs-bluewin-server;'
alias gobsv='cd ~/bluewin/livingdocs-bluewin-server; v'
alias gobd='cd ~/bluewin/livingdocs-bluewin-delivery;'
alias gobdv='cd ~/bluewin/livingdocs-bluewin-deliver; v'
alias goba='cd ~/bluewin/livingdocs-bluewin-ansible;'
alias gobav='cd ~/bluewin/livingdocs-bluewin-ansible; v'
alias gosctvdelivery='cd ~/livingdocs/livingdocs-swisscom-tv-delivery;'
alias gosctvdeliveryv='cd ~/livingdocs/livingdocs-swisscom-tv-delivery; v'
alias gosctvdesign='cd ~/bluewin/livingdocs-design-swisscom-tv;'
alias gosctvdesignv='cd ~/bluewin/livingdocs-design-swisscom-tv; v'
# blz
alias goblze='cd ~/blz/livingdocs-editor-blz;'
alias goblzev='cd ~/blz/livingdocs-editor-blz; v'
alias goblzs='cd ~/blz/livingdocs-server-blz;'
alias goblzsv='cd ~/blz/livingdocs-server-blz; v'
alias goblzd='cd ~/blz/delivery-blz;'
alias goblzdv='cd ~/blz/delivery-blz; v'
# dumont
alias gode='cd ~/dumont/dumont-editor;'
alias gods='cd ~/dumont/dumont-server;'
# swisscom chch
alias goldch='cd ~/swisscom/livingdocs;'
alias goldchv='cd ~/swisscom/livingdocs; v'
######################





########### Aliases ###########
# alias ssh='~/livingdocs/infrastructure/ssh'
alias v='code .'
# alias redis-cli='docker run -it --network="host" --rm redis redis-cli'
unalias pbcopy
unalias pbpaste
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
