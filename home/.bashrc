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

