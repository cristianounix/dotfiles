#!/bin/bash

if which brew > /dev/null; then
    echo 'HomeBrew ok !'
else
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

brew install wget
brew install python
brew install ack fortune
brew install mysql
brew install rbenv && brew install ruby-build
brew install macvim --override-system-vim
brew install vim tmux

# Install Ruby
rbenv install 2.1.0
rbenv global 2.1.0

# Install MySQL
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
mysql.server start
/usr/local/Cellar/mysql/5.5.27/bin/mysqladmin -u root password '123'
brew info mysql


pip install --user git+git://github.com/Lokaltog/powerline

cd ~/.vim/bundle/NERD_tree-ack/plugin
curl -so NERD_tree-ack.vim http://www.vim.org/scripts/download_script.php\?src_id\=17196


mkdir ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

mkdir -p ~/.vim/bundle/NERD_tree-ack/plugin


curl -L http://install.ohmyz.sh | sh


ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/osx ~/.osx
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
