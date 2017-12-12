# .bash_profile

# Get aliases and functions
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# default profile to use is `hx`
export AWS_PROFILE=hx

