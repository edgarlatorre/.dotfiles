vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set noswapfile")

vim.o.termguicolors = true

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = "unnamedplus"

-- Set highlight on search
vim.o.hlsearch = false

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.cursorline = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

vim.wo.number = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Resize split
vim.keymap.set("n", "<c-v>-", ":vertical resize -5<CR>")
vim.keymap.set("n", "<c-v>=", ":vertical resize +5<CR>")
vim.keymap.set("n", "<c-s>-", ":horizontal resize -5<CR>")
vim.keymap.set("n", "<c-s>=", ":horizontal resize +5<CR>")
