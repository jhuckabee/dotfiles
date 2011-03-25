# Force tmux to 256 colors
alias tmux="tmux -2"

export EDITOR=vi

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export PATH=/home/josh/.rvm/gems/ruby-1.9.2-p0/bin:/home/josh/.rvm/gems/ruby-1.9.2-p0@global/bin:/home/josh/.rvm/rubies/ruby-1.9.2-p0/bin:/home/josh/.rvm/bin:/usr/local/bin:/usr/local/sbin/:/bin:/sbin:/usr/bin:/usr/sbin:/home/josh/Development/personal/AdobeAIRSDK/bin:/home/josh/.rvm/bin:/usr/local/sbin:/usr/games
PATH="/usr/local/bin:/usr/local/sbin/:/bin:/sbin:/usr/bin:/usr/sbin:/home/josh/Development/personal/AdobeAIRSDK/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

