return {
  "ThePrimeagen/harpoon",
  config = function()
    require("harpoon").setup({})
    vim.keymap.set("n", "<leader>m", ":lua require('harpoon.mark').add_file()<CR>", { noremap = true })
    vim.keymap.set("n", "<leader>ht", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true })
    vim.keymap.set("n", "<leader>hn", ":lua require('harpoon.ui').nav_next()<CR>", { noremap = true })
    vim.keymap.set("n", "<leader>hp", ":lua require('harpoon.ui').nav_prev()<CR>", { noremap = true })
  end,
}
