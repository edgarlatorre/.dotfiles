-- Terminal
vim.keymap.set('n', '<Leader>\'', '<CMD>new term://zsh<CR>')

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

vim.keymap.set('n', '<Leader>ff', '<CMD>Telescope find_files<CR>')
vim.keymap.set('n', '<Leader>fg', '<CMD>Telescope live_grep<CR>')
vim.keymap.set('n', '<Leader>fb', '<CMD>telescope buffers<CR>')
vim.keymap.set('n', '<Leader>fh', '<CMD>Telescope help_tags<CR>')
vim.keymap.set('n', '<Leader>fs', '<CMD>Telescope grep_string<CR>')
vim.keymap.set('n', '<Leader>en', '<CMD>Telescope find_files cwd=~/.config/nvim<CR>')

vim.keymap.set('n', '<Leader>fe', '<CMD>lua require "telescope".extensions.file_browser.file_browser()<CR>')

vim.keymap.set('n', '<Leader>gs', '<CMD>Telescope git_status<CR>')
vim.keymap.set('n', '<Leader>gb', '<CMD>Telescope git_branches<CR>')
vim.keymap.set('n', '<Leader>gc', '<CMD>Git git_commit<CR>')

-- Nvim Tree
vim.keymap.set('n', '<Leader>n', '<CMD>NvimTreeToggle<CR>')

-- Tabs

vim.keymap.set('n', '<Leader>tb', '<CMD>tabprevious<CR>')
vim.keymap.set('n', '<Leader>tn', '<CMD>tabnext<CR>')
vim.keymap.set('n', '<Leader>tt', '<CMD>tabnew<CR>')

vim.keymap.set('n', '<Leader>1', '1gt')
vim.keymap.set('n', '<Leader>2', '2gt')
vim.keymap.set('n', '<Leader>3', '3gt')
vim.keymap.set('n', '<Leader>4', '4gt')
vim.keymap.set('n', '<Leader>5', '5gt')
vim.keymap.set('n', '<Leader>6', '6gt')
vim.keymap.set('n', '<Leader>7', '7gt')
vim.keymap.set('n', '<Leader>8', '8gt')
vim.keymap.set('n', '<Leader>9', '9gt')
vim.keymap.set('n', '<Leader>10', '10gt')
