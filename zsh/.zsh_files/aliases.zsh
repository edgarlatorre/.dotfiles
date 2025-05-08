# File system
alias ls='eza -lh --group-directories-first --icons'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'batcat --style=numbers --color=always {}'"
alias fd='fdfind'

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Tools
alias n='nvim'
alias g='git'
alias d='docker'
alias r='rails'
alias bat='batcat'
alias lzg='lazygit'
alias lzd='lazydocker'

# Git
alias g='git'
alias gst='git status'
alias ga='git add'
alias gaa='git add --all'
alias gbl='git blame -w'
alias gb='git branch'
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'
alias gc!='git commit --verbose --amend'
alias gcmsg='git commit --message'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcB='git checkout -B'
alias gcm='git checkout $(git_main_branch)'
alias ggpush='git push origin $(git branch --show-current)'

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  ## Colorize the ls output ##
  alias ls='ls --color=auto'

  ## Use a long listing format ##
  alias ll='ls -la'

  ## Show hidden files ##
  alias lsa='ls -d .* --color=auto'
fi


# POSTGRES

# Starts a postgres container, remember to create the pgdata:
# docker volume create pgdata
function start_pg() {
  podman run -it --rm --name postgres -v pgdata:/var/lib/postgresql/data -d -p 5432:5432 -e POSTGRES_PASSWORD=postgres postgres
}

# Connects to a running postgres container, remember to have the container running
function connect_pg() {
  podman exec -it postgres psql -U postgres
}

function start_redis() {
  podman run -it --rm --name redis -p 6379:6379 -d redis
}
