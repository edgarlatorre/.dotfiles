require("catppuccin").setup({
  flavour = "frappe", -- latte, frappe, macchiato, mocha
  nvimtree = {
    enabled = true,
    show_root = true, -- makes the root folder not transparent
    transparent_panel = false, -- make the panel transparent
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    treesitter = true,
  },
})
