# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Env Postgres local Cardinal
PGHOST=5432
PGUSER=postgres
PGPASSWORD=password

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="muse"
ZSH_THEME="agnoster"

# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
plugins=(zsh-nvm git node pip python virtualenv dnf zsh-syntax-highlighting kubectl kube-ps1)
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
source ~/dotfiles/kind_completation


# NVM Section
export NVM_DIR="$HOME/.nvm"
export PATH="/usr/local/sbin:$PATH"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Kubectl context
# source "/opt/brew/opt/kube-ps1/share/kube-ps1.sh"
KUBE_PS1_SYMBOL_USE_IMG=false
KUBE_PS1_SYMBOL_ENABLE=false
KUBE_PS1_DIVIDER=' > '
PROMPT='$(kube_ps1)'$PROMPT

# SPACECHIP-ZSH-THEME
# source ~/dotfiles/spaceship
# END SPACECHIP-ZSH-THEME

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/opt/brew/bin:$PATH"
[[ /opt/brew/bin/kubectl ]] && source <(kubectl completion zsh)


## Add Postgres command from lipPq (brew install libpq)
export PATH="/opt/brew/Cellar/libpq/14.5/bin:$PATH"
export PATH="/opt/brew/opt/postgresql@11/bin:$PATH"
export PATH="/Users/vntcrol/.local/bin:$PATH"
export PATH="~/.bun/bin:$PATH"

# export LDFLAGS="-L/opt/brew/opt/postgresql@11/lib"
# export CPPFLAGS="-I/opt/brew/opt/postgresql@11/include"
#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"



# bun completions
[ -s "/Users/vntcrol/.bun/_bun" ] && source "/Users/vntcrol/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
