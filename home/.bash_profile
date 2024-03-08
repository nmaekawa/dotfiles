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


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nmaekawa/opt/google-cloud-sdk/path.bash.inc' ]; then . '/Users/nmaekawa/opt/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nmaekawa/opt/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/nmaekawa/opt/google-cloud-sdk/completion.bash.inc'; fi

# github api token for homebrew, expires 07sep22
export HOMEBREW_GITHUB_API_TOKEN="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"


source /Users/nmaekawa/.docker/init-bash.sh || true # Added by Docker Desktop
