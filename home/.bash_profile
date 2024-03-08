# .bash_profile

# Get aliases and functions
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# default profile to use is `hx`
export AWS_PROFILE=hx


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nmaekawa/opt/google-cloud-sdk/path.bash.inc' ]; then . '/Users/nmaekawa/opt/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nmaekawa/opt/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/nmaekawa/opt/google-cloud-sdk/completion.bash.inc'; fi

# github api token for homebrew, expires 07sep22
export HOMEBREW_GITHUB_API_TOKEN="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"


source /Users/nmaekawa/.docker/init-bash.sh || true # Added by Docker Desktop
