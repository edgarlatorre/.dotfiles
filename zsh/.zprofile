export LC_ALL=en_US.UTF-8
export GPG_TTY=$(tty)

if [[ "$OSTYPE" == "darwin"* ]]; then
  if [ -f  /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  else
    brew_path=$(which brew)
    eval "$($brew_path shellenv)"
  fi

  if [ -f  /usr/local/opt/asdf/libexec/asdf.sh ]; then
    . /usr/local/opt/asdf/libexec/asdf.sh
  elif [ -f  /usr/local/opt/asdf/libexec/asdf.sh ]; then
    . $(brew --prefix asdf)/libexec/asdf.sh
  fi
fi

# POSTGRES

# Starts a postgres container, remember to create the pgdata:
# docker volume create pgdata
function start_pg() {
  docker run -it --rm --name postgres -v pgdata:/var/lib/postgresql/data -d -p 5432:5432 -e POSTGRES_PASSWORD=postgres postgres
}

# Connects to a running postgres container, remember to have the container running
function connect_pg() {
  docker exec -it postgres psql -U postgres
}

function start_redis() {
  docker run -it --rm --name redis -p 6379:6379 -d redis
}

if [ -f ~/.orbstack/shell/init.zsh ]; then
  # Added by OrbStack: command-line tools and integration
  source ~/.orbstack/shell/init.zsh 2>/dev/null || :
fi
