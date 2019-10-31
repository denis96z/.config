#~/.zshrc

#Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

#Update oh-my-zsh every 7 days.
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=7

#git clone https://github.com/jimeh/zsh-peco-history.git $ZSH_CUSTOM/plugins/zsh-peco-history

#Enable plugins.
plugins=( \
  sudo \
  common-aliases \
  command-not-found \
  git fasd jsontools \
  docker docker-compose \
  zsh-peco-history \
)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

alias cdi='cd `ls | peco`'

#Git add changes to previous commit.
alias gcamd='git commit --amend -am "$(git log --pretty=format:%s -1)"'

#Enable local config.
source $HOME/.zshrc.local || echo ''
