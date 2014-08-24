#!/bin/bash

check_homebrew(){
  if which brew > /dev/null; then
    echo 'HomeBrew ok !'
  else
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  fi
  brew tap phinze/homebrew-cask
}

list_apps_brew_cask(){
    local -a list=(
        "appcleaner"
        "firefox"
        "google-chrome"
        "skype"
        "iterm2"
        "utorrent"
        "vlc"
        "gfxcardstatus"
        "sublime-text"
        "filezilla"
        "disk-inventory-x"
        "dropbox"
        "mou"
        "feeds"
        "limechat"
        "arduino"
        "google-drive"
    )
}

list_apps_brew(){
  local -a list=(
        "python"
        "ack"
        "fortune"
        "vim"
        "tmux"
        "rbenv"
        "ruby-build"
        "mysql"
        "macvim --override-system-vim"
        "wget"
        "htop"
        "atop"
        "brew-cask"
  )
}

create_sym_links(){
  ln -s ~/dotfiles/vimrc ~/.vimrc
  ln -s ~/dotfiles/osx ~/.osx
  ln -s ~/dotfiles/gitconfig ~/.gitconfig
  ln -s ~/dotfiles/gitignore ~/.gitignore
  ln -s ~/dotfiles/vim ~/.vim
  ln -s ~/dotfiles/zshrc ~/.zshrc
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
}

vim_configs(){
  pip install --user git+git://github.com/Lokaltog/powerline
  cd ~/.vim/bundle/NERD_tree-ack/plugin
  curl -so NERD_tree-ack.vim http://www.vim.org/scripts/download_script.php\?src_id\=17196
  mkdir ~/.vim/bundle
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  mkdir -p ~/.vim/bundle/NERD_tree-ack/plugin
}

mysql_configs(){
  # Install MySQL
  mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
  mysql.server start
  #/usr/local/Cellar/mysql/5.5.27/bin/mysqladmin -u root password '123'
  mysqladmin -u root password '123'
  brew info mysql
}

ohmyzsh_configs(){
  curl -L http://install.ohmyz.sh | sh
}

ruby_configs(){
  rbenv install 2.1.0
  rbenv global 2.1.0
}

check_homebrew
exit 1
brew install $(list_apps_brew)
brew cask install $(list_apps_brew_cask)

ruby_configs
mysql_configs
vim_configs
ohmyzsh_configs

create_sym_links
