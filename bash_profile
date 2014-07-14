#GIT
source ~/dotfiles/git/git-completion.bash
source ~/dotfiles/git/git-prompt.bash
source ~/dotfiles/git/git-prompt.sh
source ~/dotfiles/.aliases

# BASE PS1
PS1="\[\e]2;$PWD\[\a\]\[\e]1;\]$(basename "$(dirname "$PWD")")/\W\[\a\]${BOLD}\$(usernamehost)\[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n\$ \[$RESET\]"

export PATH="$PATH:/usr/local/bin/"
export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:$PATH"
export PATH="/Users/cristianounix/android/sdk/tools:/Users/cristianounix/android/sdk/platform-tools:$PATH"

export BLOCKSIZE=1k

PROMPT_COMMAND='__git_ps1 "\[\e[1;30m\](\[\e[01;32m\]\u\[\e[1;30m\]@\[\e[01;32m\]\h\[\e[1;30m\]:\[\e[0;35m\]\w\[\e[1;30m\])" " \[\e[01;37m\]\$\[\e[00m\] " " \[\e[1;30m\](\[\e[01;33m\]%s\[\e[1;30m\])" '

export PATH="$(brew --prefix josegonzalez/php/php55)/bin:$PATH"
PHP_AUTOCONF="autoconf is /usr/local/bin/autoconf autoconf is /usr/local/bin/autoconf autoconf is /usr/local/bin/autoconf"
export PATH="$HOME/.rbenv/bin:$PATH"
export JAVA_HOME="$HOME/JavaHome"
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
