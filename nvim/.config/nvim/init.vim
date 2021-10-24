
call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'itchyny/lightline.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'gruvbox-community/gruvbox',
Plug 'terryma/vim-multiple-cursors'
Plug 'Olical/conjure', {'tag': 'v4.23.0'}
Plug 'akinsho/toggleterm.nvim'
call plug#end()

colorscheme gruvbox
let mapleader="\<space>"
let maplocalleader=","

lua require("config")

" Vim Configurations
nnoremap <leader>cv :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Terminal
nnoremap <leader>' :new term://zsh<cr>
let g:toggleterm_terminal_mapping = '<C-e>'

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P


autocmd Filetype python setlocal ts=4 sw=4 sts=4 expandtab autoindent

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup EDITOR
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
