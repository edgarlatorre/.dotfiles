return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add = { text = "+" },
      change = { text = "~" },
      delete = { text = "_" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
    },
    current_line_blame = true,
    on_attach = function(bufnr)
      vim.keymap.set(
        "n",
        "<leader>gp",
        require("gitsigns").prev_hunk,
        { buffer = bufnr, desc = "[G]o to [P]revious Hunk" }
      )
      vim.keymap.set(
        "n",
        "<leader>gt",
        require("gitsigns").toggle_current_line_blame,
        { buffer = bufnr, desc = "[G]o to [T]oggle" }
      )
      vim.keymap.set(
        "n",
        "<leader>gn",
        require("gitsigns").next_hunk,
        { buffer = bufnr, desc = "[G]o to [N]ext Hunk" }
      )
      vim.keymap.set(
        "n",
        "<leader>ph",
        require("gitsigns").preview_hunk,
        { buffer = bufnr, desc = "[P]review [H]unk" }
      )
    end,
  },
}
