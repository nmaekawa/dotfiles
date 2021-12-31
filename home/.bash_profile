# .bash_profile

# Get aliases and functions
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# pyenv shims in path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=0

# default profile to use is `hx`
export AWS_PROFILE=hx

