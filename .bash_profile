# LAZY BASH STUFF

# terminal colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export AWS_REGION="us-east-1"
alias fuck='sudo $(history -p \!\!)'

# tiny care terminal configs
export TTC_BOTS='tinycarebot,dril,jon_bois'
export TTC_REPOS='~/repos/,~/repos/bluehq/'
export TTC_WEATHER='20011'
alias chill='tiny-care-terminal'

# Blow away all docker images
alias dockerclean='docker rm -f $(docker ps -a -q) && docker volume rm $(docker volume ls -qf dangling=true) && docker rmi `docker images -q` && docker images -q --filter "dangling=true" | xargs -n 100 docker rmi'
