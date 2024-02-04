local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("edgar.configs")
require("edgar.settings")
require("lazy").setup("edgar.plugins", {
  dev = {
    path = "~/Projects/neovim-plugins",
    patterns = {},
    fallback = false,
  },
})
