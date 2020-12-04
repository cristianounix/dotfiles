# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/vntcrol/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git node docker nvm pyenv virtualenv pip python osx dnf zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh


# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

source ~/dotfiles/aliases	


export NVM_DIR="$HOME/.nvm"
export PATH="/usr/local/sbin:$PATH"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# SPACECHIP-ZSH-THEME
source ~/dotfiles/spaceship	
# END SPACECHIP-ZSH-THEME