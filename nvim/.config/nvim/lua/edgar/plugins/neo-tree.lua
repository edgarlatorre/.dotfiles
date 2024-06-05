return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          hide_by_name = {
            ".git",
            ".DS_Store",
            "thumbs.db",
            "node_modules",
            "_build",
            "deps",
            "sorbet",
            "*.db",
          },
        },
      },
    })
    vim.keymap.set("n", "<C-n>", "<cmd>Neotree filesystem reveal left<CR>", {})
    vim.keymap.set("n", "<leader>bf", "<cmd>Neotree buffers reveal float<CR>", {})
  end,
}
