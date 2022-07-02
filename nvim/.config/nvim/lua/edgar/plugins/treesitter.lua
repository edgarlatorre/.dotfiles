require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "go", "ruby", "elixir", "javascript", "typescript" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
