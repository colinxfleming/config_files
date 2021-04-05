# LAZY BASH STUFF

eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias fuck='sudo $(history -p \!\!)'

# tinycareterminal
export TTC_BOTS='tinycarebot, dril, jon_bois'
export TTC_REPOS='~/repos'
export TTC_WEATHER='20011'
alias chill='tiny-care-terminal'

alias dockerclean='docker rm -f $(docker ps -a -q) && docker volume rm $(docker volume ls -qf dangling=true) && docker rmi `docker images -q` && docker images -q --filter "dangling=true" | xargs -n 100 docker rmi'
alias dockernuke='docker-machine rm default && docker-machine create --driver virtualbox --virtualbox-disk-size "100100" default'

alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# use brew ssl when installing ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
