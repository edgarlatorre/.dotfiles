export LC_ALL=en_US.UTF-8
export GPG_TTY=$(tty)

brew_path=$(which brew)

eval "$($brew_path shellenv)"

. $(brew --prefix asdf)/libexec/asdf.sh

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
