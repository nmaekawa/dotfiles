# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# personal bin always first
export PATH="${HOME}/bin:${PATH}"

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

# python pew, virtualenv vars
mkdir -p ~/.venvs
export WORKON_HOME=~/.venvs
if [ -d ~/Documents ]; then
    export PROJECT_HOME=~/Documents
fi

# other personal env vars
if [ -e ~/.ssh/naomi.env ]; then
    source ~/.ssh/naomi.env
fi

# turnoff hibernation mode, check:
# https://www.macissues.com/2015/05/08/how-to-fix-your-mac-not-waking-from-sleep/
# sudo pmset standby 0
# sudo pmset autopoweroff 0
