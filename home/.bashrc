# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# load shell dotfiles
for file in ~/.{path,exports,aliases,functions,extra}; do
    [ -r "${file}" ] && [ -f "${file}" ] && source "${file}"
done
unset file

# case insensitive globbing (for pathname expansion)
shopt -s nocaseglob

# append history rather than overwrite
shopt -s histappend

# define homeshick function
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

# install vim neobundle if not already installed
if [ ! -d ~/.vim/bundle/neobundle.vim ]; then
    mkdir ~/.vim/bundle
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
    vim +NeoBundleInstall +qall
fi

# other personal env vars
if [ -e ~/.ssh/naomi.env ]; then
    source ~/.ssh/naomi.env
fi

# turnoff hibernation mode, check:
# https://www.macissues.com/2015/05/08/how-to-fix-your-mac-not-waking-from-sleep/
# sudo pmset standby 0
# sudo pmset autopoweroff 0

# to load pyenv automatically
export PATH="/Users/nmaekawa/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# pyenv prompt added via function
PYENV_VIRTUALENV_DISABLE_PROMPT=1

export CFLAGS="-I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include"
export LDFLAGS="-L$(brew --prefix openssl)/lib"
export CPPFLAGS="-I$(brew --prefix zlib)/include"

# pyenv rehash, autocompletion, pyenv as function
if command -v pyenv >/dev/null; then
    eval "$(pyenv init -)"
fi

# psql with brew install libpq
export PATH="/usr/local/opt/libpq/bin:$PATH"
# For compilers to find libp
#export LDFLAGS="-L/usr/local/opt/libpq/lib"
#export CPPFLAGS="-I/usr/local/opt/libpq/include"

# mysql-client path
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


