# Install ruby and rails

mise use --global ruby@latest
mise x ruby -- gem install rails --no-document

# Install erlang, elixir and phoenix

mise use --global erlang@latest
mise use --global elixir@latest
mise x elixir -- mix local.hex --force

# Install go
mise use --global go@latest
