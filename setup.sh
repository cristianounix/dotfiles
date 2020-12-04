#!/bin/bash

bin_exists() {
    if [ $(type -P $1) ]; then
      return 0
    fi
    return 1
}

check_homebrew(){
  if which brew > /dev/null; then
    echo 'HomeBrew ok !'
  else
    echo "Instaling brew..."
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    echo "HomeBrew ok!"
  fi
  brew tap phinze/homebrew-cask
}

check_vundle(){
  if -d ~/.vim/bundle/ then
    echo "Vundle ok"
  else
    echo "Cloning vundle for vim..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    echo "Vundle ok!"
  fi
}

check_docker(){
  if type docker > /dev/null then
    echo "Docker ok"
  else
    echo "Installing Docker..."
    brew cask install docker
    echo "Docker ok!"
  fi
}

check_zsh(){
  if type zsh > /dev/null then
    echo "OhMyZsh ok"
  else
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    echo "Oh-my-zsh ok!"
  fi
}

list_apps_brew_cask(){
    local -a list=(
        "appcleaner"
        "firefox"
        "google-chrome"
        "skype"
        "iterm2"
        "vlc"
        "sublime-text"
        "filezilla"
        "dropbox"
        "visual-studio-code"
    )
}

list_apps_brew(){
  local -a list=(
        "python"
        "ack"
        "fortune"
        "vim"
        "coreutils"
        "imagemagick"
        "tmux"
        "macvim --override-system-vim"
        "wget"
        "node"
        "git"
        "ctags"
        "autoconf"
        "automake"
        "openssl"
        "htop"
        "atop"
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
  
  mkdir -p ~/.vim/bundle
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  
  mkdir -p ~/.vim/autoload && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  mkdir -p ~/.vim/bundle/NERD_tree-ack/plugin
}
 


check_homebrew
check_vundle
check_zsh

brew install $(list_apps_brew)
brew cask install $(list_apps_brew_cask)

vim_configs
create_sym_links
