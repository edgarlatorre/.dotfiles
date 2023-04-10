local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

local ensure_packer = function()
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

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

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('edgar/plugins/autopairs')
    end
  }

  use 'windwp/nvim-ts-autotag'

  -- Style
  use({
    'catppuccin/nvim',
    as = 'catppuccin',
    config = function()
      require('edgar/plugins/colorscheme')
    end
  })
  use 'kyazdani42/nvim-web-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('edgar/plugins/lualine')
    end
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('edgar/plugins/treesitter')
    end
  }

  -- LSP
  use {
    'williamboman/mason.nvim',
    config = function()
      require('edgar/plugins/mason')
    end
  }

  use 'williamboman/mason-lspconfig.nvim'

  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('edgar/plugins/lsp')
    end
  }


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
  use {
    'L3MON4D3/LuaSnip',
    after = 'nvim-cmp',
    config = function()
      require('edgar/plugins/luasnip')
    end
  }
  use 'saadparwaiz1/cmp_luasnip'
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
