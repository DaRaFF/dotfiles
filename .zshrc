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

########### DirEnv ########################
eval "$(direnv hook zsh)" #

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
# customer-solutions
alias gocs='cd ~/dev/livingdocs/customer-solutions;'
alias goldcs='cd ~/dev/livingdocs/customer-solutions;'
# service
alias goldse='cd ~/dev/livingdocs/livingdocs-service-editor;'
alias goldss='cd ~/dev/livingdocs/livingdocs-service-server;'
# nzz
alias gonzze='cd ~/dev/nzz/livingdocs-editor;'
alias gonzzs='cd ~/dev/nzz/livingdocs-api;'
# bluewin
alias gobe='cd ~/dev/bluewin/livingdocs-bluewin-editor;'
alias gobs='cd ~/dev/bluewin/livingdocs-bluewin-server;'
alias gobd='cd ~/dev/bluewin/livingdocs-bluewin-delivery;'
alias goba='cd ~/dev/bluewin/livingdocs-bluewin-ansible;'
alias gosctvdelivery='cd ~/dev/dev/livingdocs/livingdocs-swisscom-tv-delivery;'
alias gosctvdesign='cd ~/dev/bluewin/livingdocs-design-swisscom-tv;'
# blz
alias goblze='cd ~/dev/blz/livingdocs-editor-blz;'
alias goblzs='cd ~/dev/blz/livingdocs-server-blz;'
alias goblzd='cd ~/dev/blz/delivery-blz;'
# dumont
alias gode='cd ~/dev/dumont/livingdocs/editor;'
alias gods='cd ~/dev/dumont/livingdocs/server;'
# swisscom chch
alias gose='cd ~/dev/swisscom/editor;'
alias goss='cd ~/dev/swisscom/server;'
# 20mins
alias go20min='cd ~/dev/20mins/20mins;'
alias go20mine='cd ~/dev/20mins/20mins/editor;'
alias go20mins='cd ~/dev/20mins/20mins/server;'
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

###################### fnm ######################
# fnm alternative to nvm
# auto switches to the right node version when going to a directory with a .nvmrc file
# place this after nvm initialization!
alias nvm=fnm

eval "$(fnm env)"

autoload -U add-zsh-hook
_fnm_autoload_hook () {
  if [[ -f .node-version && -r .node-version ]]; then
    fnm use --silent-if-unchanged
  elif [[ -f .nvmrc && -r .nvmrc ]]; then
    fnm use --silent-if-unchanged
  fi
}
add-zsh-hook chpwd _fnm_autoload_hook && _fnm_autoload_hook




