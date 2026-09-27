# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export SSH_AUTH_SOCK="$HOME/.1password/agent.sock"
export EDITOR=nvim
