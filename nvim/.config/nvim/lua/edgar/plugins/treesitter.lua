require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "lua",
    "rust",
    "go",
    "ruby",
    "elixir",
    "eex",
    "heex",
    "javascript",
    "typescript",
    "html",
    "css",
    "scss",
    "json",
    "yaml",
    "graphql"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
}
