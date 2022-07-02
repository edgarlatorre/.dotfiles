local opt = vim.opt

vim.cmd([[colorscheme nord]])

vim.g.mapleader = ' '

opt.cmdheight = 2
opt.exrc = true
opt.hidden = true
opt.incsearch = true
opt.backup = false
opt.errorbells = false
opt.hlsearch = false
opt.wrap = false
opt.showmode = false
opt.swapfile = false
opt.nu = true
opt.scrolloff = 8
opt.shiftwidth = 2
opt.shortmess:append('c')
opt.signcolumn = 'yes'
opt.smartindent = true

-- Tabs and Spaces
opt.softtabstop = 2
opt.tabstop = 2
opt.expandtab = true

opt.termguicolors = true
opt.undofile = true
opt.updatetime = 50
opt.wildmode = { 'list', 'longest' }
opt.completeopt = 'menu,menuone,noselect'

vim.cmd('set wildignore+=.git,.svn')
vim.cmd('set wildignore+=*.o,*.obj,*.jpg,*.png,*.gif,*.log,*.gz,*.bin,*.gem,*.rbc,*.class')
vim.cmd('set wildignore+=*.min.js,**/node_modules/**,**/images/**')
vim.cmd('set wildignore+=**/assets/**/original/**,**/assets/**/thumb/**,**/assets/**/small/**')
vim.cmd('set wildignore+=tmp,public,vendor/bundle/*,vendor/cache/*,test/fixtures/*,vendor/gems/*,spec/cov,a/*')
vim.cmd('set wildignore+=sorbet/*')
