-- Terminal
vim.keymap.set('n', '<Leader>\'', ':new term://zsh<CR>')

-- Copy to clipboard
vim.keymap.set('v', '<Leader>y', '"+y')
vim.keymap.set('n', '<Leader>Y', '"+yg_')
vim.keymap.set('n', '<Leader>y', '"+y')
vim.keymap.set('n', '<Leader>yy', '"+yy')

-- Paste from clipboard
vim.keymap.set('n', '<Leader>p', '"+p')
vim.keymap.set('n', '<Leader>P', '"+P')
vim.keymap.set('v', '<Leader>p', '"+p')
vim.keymap.set('v', '<Leader>P', '"+P')

-- Telescope

vim.keymap.set('n', '<Leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<Leader>fg', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<Leader>fb', ':telescope buffers<CR>')
vim.keymap.set('n', '<Leader>fh', ':Telescope help_tags<CR>')
vim.keymap.set('n', '<Leader>fs', ':Telescope grep_string<CR>')
vim.keymap.set('n', '<Leader>en', ':Telescope find_files cwd=~/.config/nvim<CR>')

vim.keymap.set('n', '<Leader>fe', '<cmd>lua require "telescope".extensions.file_browser.file_browser()<CR>')

vim.keymap.set('n', '<Leader>gs', ':Telescope git_status<CR>')
vim.keymap.set('n', '<Leader>gb', ':Telescope git_branches<CR>')
vim.keymap.set('n', '<Leader>gc', ':Git git_commit<CR>')
