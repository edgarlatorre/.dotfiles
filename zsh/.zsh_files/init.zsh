export LC_ALL=en_US.UTF-8

eval "$(starship init zsh)"
eval "$(/usr/bin/mise activate zsh)"
eval "$(atuin init zsh --disable-up-arrow)"
eval "$(zoxide init zsh)"

if command -v fzf &> /dev/null; then
  [ -r /usr/share/bash-completion/completions/fzf ] && . /usr/share/bash-completion/completions/fzf
fi

if [ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  . ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
