local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_bootstrap

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system(
    { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
  )
end

return require('packer').startup(function(use)
  use 'nvim-lua/plenary.nvim'
  use 'tpope/vim-fugitive'

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('edgar/plugins/gitsigns')
    end
  }

  use {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('edgar/plugins/nvim-tree')
    end
  }

  -- Style
  use 'shaunsingh/nord.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('edgar/plugins/lualine')
    end
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('edgar/plugins/lsp')
    end
  }
  use 'williamboman/nvim-lsp-installer'

  -- Completion
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require('edgar/plugins/completion')
    end
  }
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'rafamadriz/friendly-snippets'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('edgar/plugins/telescope')
    end
  }
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
