########### PATH ##########################
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export PATH=${PATH}:/usr/local/Cellar/imagemagick/6.9.2-6/bin
export PATH=${PATH}:~/.nvm/current/bin
export PATH=${PATH}:/opt/local/bin
export PATH=${PATH}:/opt/homebrew/bin
export PATH=${PATH}:./node_modules/.bin # use node binaries
export PATH=${PATH}:$HOME/.docker/cli-plugins # docker plugins like docker-compose

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
alias goe='cd ~/dev/li/upstream/livingdocs-editor;'
alias gos='cd ~/dev/li/upstream/livingdocs-server;'
alias gof='cd ~/dev/li/upstream/livingdocs-framework;'
# customer-solutions
alias gocso='cd ~/dev/li/customer-solutions;'
# msp 20mins
alias go20min='cd ~/dev/li/msp/downstream/livingdocs-20mins;'
alias go20mine='cd ~/dev/li/msp/downstream/livingdocs-20mins/editor;'
alias go20mins='cd ~/dev/li/msp/downstream/livingdocs-20mins/server;'
alias go20mind='cd ~/dev/li/msp/downstream/livingdocs-20mins/server/packages/design;'
# msp bluewin
alias gobluewin='cd ~/dev/li/msp/downstream/livingdocs-bluewin;'
alias gobluewine='cd ~/dev/li/msp/downstream/livingdocs-bluewin/editor;'
alias gobluewins='cd ~/dev/li/msp/downstream/livingdocs-bluewin/server;'
alias gobluewind='cd ~/dev/li/msp/downstream/livingdocs-bluewin/server/packages/design;'
# msp blz
alias goblz='cd ~/dev/li/msp/downstream/livingdocs-blz;'
alias goblze='cd ~/dev/li/msp/downstream/livingdocs-blz/editor;'
alias goblzs='cd ~/dev/li/msp/downstream/livingdocs-blz/server;'
alias goblzd='cd ~/dev/li/msp/downstream/livingdocs-blz/server/packages/design;'
# msp chmedia
alias gochmedia='cd ~/dev/li/msp/downstream/livingdocs-chmedia;'
alias gochmediae='cd ~/dev/li/msp/downstream/livingdocs-chmedia/editor;'
alias gochmedias='cd ~/dev/li/msp/downstream/livingdocs-chmedia/server;'
alias gochmediad='cd ~/dev/li/msp/downstream/livingdocs-chmedia/server/packages/design;'
# msp demo
alias godemo='cd ~/dev/li/msp/downstream/livingdocs-demo;'
alias godemoe='cd ~/dev/li/msp/downstream/livingdocs-demo/editor;'
alias godemos='cd ~/dev/li/msp/downstream/livingdocs-demo/server;'
alias godemod='cd ~/dev/li/msp/downstream/livingdocs-demo/server/packages/design;'
# msp dfv
alias godfv='cd ~/dev/li/msp/downstream/livingdocs-dfv;'
alias godfve='cd ~/dev/li/msp/downstream/livingdocs-dfv/editor;'
alias godfvs='cd ~/dev/li/msp/downstream/livingdocs-dfv/server;'
alias godfvd='cd ~/dev/li/msp/downstream/livingdocs-dfv/server/packages/design;'
# msp faz
alias gofaz='cd ~/dev/li/msp/downstream/livingdocs-faz;'
alias gofaze='cd ~/dev/li/msp/downstream/livingdocs-faz/editor;'
alias gofazs='cd ~/dev/li/msp/downstream/livingdocs-faz/server;'
alias gofazd='cd ~/dev/li/msp/downstream/livingdocs-faz/server/packages/design;'
# msp handelsblatt
alias gohmg='cd ~/dev/li/msp/downstream/livingdocs-handelsblatt;'
alias gohmge='cd ~/dev/li/msp/downstream/livingdocs-handelsblatt/editor;'
alias gohmgs='cd ~/dev/li/msp/downstream/livingdocs-handelsblatt/server;'
alias gohmgd='cd ~/dev/li/msp/downstream/livingdocs-handelsblatt/server/packages/design;'
# msp npg
alias gonpg='cd ~/dev/li/msp/downstream/livingdocs-npg;'
alias gonpge='cd ~/dev/li/msp/downstream/livingdocs-npg/editor;'
alias gonpgs='cd ~/dev/li/msp/downstream/livingdocs-npg/server;'
alias gonpgd='cd ~/dev/li/msp/downstream/livingdocs-npg/server/packages/design;'
# msp nzz
alias gonzz='cd ~/dev/li/msp/downstream/livingdocs-nzz;'
alias gonzze='cd ~/dev/li/msp/downstream/livingdocs-nzz/editor;'
alias gonzzs='cd ~/dev/li/msp/downstream/livingdocs-nzz/server;'
alias gonzzd='cd ~/dev/li/msp/downstream/livingdocs-nzz/server/packages/design;'
# msp sz
alias gosz='cd ~/dev/li/msp/downstream/livingdocs-sz;'
alias gosze='cd ~/dev/li/msp/downstream/livingdocs-sz/editor;'
alias goszs='cd ~/dev/li/msp/downstream/livingdocs-sz/server;'
alias goszd='cd ~/dev/li/msp/downstream/livingdocs-sz/server/packages/design;'
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




