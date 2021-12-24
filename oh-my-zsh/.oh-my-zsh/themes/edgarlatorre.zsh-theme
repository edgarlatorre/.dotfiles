fg_blue="\033[0;34m"
fg_reset="\e[0m"
fg_gray="\033[1;30m"
fg_green="\033[0;32m"
fg_light_gray="\033[0;37m"
fg_light_green="\033[1;32m"
fg_light_red="\033[1;31m"
fg_red="\033[0;31m"
fg_white="\033[1;37m"
fg_yellow="\033[0;33m"
fg_purple="\e[1;35m"

__prompt_ruby () {
  if [ -f Gemfile.lock ]; then
    ruby_version=$(ruby -e "puts RUBY_VERSION")
    echo "${fg_red}\ue23e ${ruby_version}${fg_reset}"
  fi
}

__prompt_rails () {
  if [ -f Gemfile.lock ]; then
    rails_version=$(cat Gemfile.lock | grep -E " +rails \([0-9]+" | sed 's/ *rails (\(.*\))/\1/')
    [ "$rails_version" != "" ] && echo " ${fg_red}\ue73b ${rails_version}${fg_reset}"
  fi
}

__prompt_elixir () {
  if [ -f mix.exs ]; then
    elixir_version=$(elixir --short-version)
    echo "${fg_purple}\ue62d ${elixir_version}${fg_reset}"
  fi
}

__prompt_phoenix () {
  if [ -f mix.lock ]; then
    phoenix_version=$(mix phx --version | sed 's/Phoenix //')
    echo "${fg_purple}\ue755 ${phoenix_version}${fg_reset}"
  fi
}

__prompt_path () {
  current_path="${PWD/#$HOME/~}"
  echo "➜ ${fg_blue}${current_path}${fg_reset}"
}

__prompt_blocks () {
  blocks="$(__prompt_ruby)$(__prompt_rails)$(__prompt_elixir) $(__prompt_phoenix)"
  blocks=$(echo $blocks | sed -E 's/^ +//')

  if [[ "$blocks" != "" ]]; then
    blocks="${blocks} "
  fi

  echo $blocks
}

__prompt_content() {
  prompt="\n$(__prompt_path) $(git_prompt_info)$(__prompt_blocks)\n$ "
  echo $prompt
}

PROMPT='$(__prompt_content)'


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
