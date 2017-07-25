# Enable vi key bindings
set -o vi

source ~/.git-completion.bash

# Set default editor
export EDITOR='mvim -f -v'

# Alias vim/vi to mvim version installed and compiled by `brew install macvim`
alias vim='mvim -v'
alias vi='mvim -v'

alias tmux='tmux -2'

# Initialize rbenv
export RBENV_ROOT=/usr/local/opt/rbenv
eval "$(rbenv init -)"

# write a function to compute the current git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# set the PS1 variable
PS1="\[\e[0;38m\]\w\[\e[0;0m\]\[\e[1;34m\]\$(parse_git_branch)\[\e[0;0m\] \[\e[0;35m\]$\[\e[0;0m\] "
