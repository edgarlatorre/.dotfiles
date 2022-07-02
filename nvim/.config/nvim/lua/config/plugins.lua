local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	vim.notify("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
	autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]])

return require("packer").startup(function(use)
	-- Telescope
	use({ "honza/vim-snippets" })
	use({ "nvim-lua/plenary.nvim" })
	use({ "lewis6991/gitsigns.nvim" })
	use({ "nvim-telescope/telescope.nvim" })
	use({ "nvim-telescope/telescope-fzy-native.nvim" })
	use({ "nvim-telescope/telescope-file-browser.nvim" })
	use({ "itchyny/lightline.vim" })
	use({ "elixir-editors/vim-elixir" })
	use({ "slashmili/alchemist.vim" })

	use({ "vim-ruby/vim-ruby" })
	use({ "tpope/vim-rails" })

	use({ "jiangmiao/auto-pairs" })
	use({ "sheerun/vim-polyglot" })
	use({ "tpope/vim-surround" })
	use({ "tpope/vim-fugitive" })
	use({ "terryma/vim-multiple-cursors" })
	use({ "numToStr/Comment.nvim" })

	-- LSP
	use({ "neovim/nvim-lspconfig" })
	use({ "williamboman/nvim-lsp-installer" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-cmdline" })

	-- Snippets
	use({ "hrsh7th/cmp-vsnip" })
	use({ "hrsh7th/vim-vsnip" })
	use({ "hrsh7th/vim-vsnip-integ" })
	use({ "rafamadriz/friendly-snippets" })

	-- Colorscheme
	use({ "tjdevries/colorbuddy.vim" })
	use({ "tjdevries/gruvbuddy.nvim" })
	use({ "gruvbox-community/gruvbox" })
end)
