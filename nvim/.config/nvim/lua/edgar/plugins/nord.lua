return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.opt.termguicolors = true
    vim.cmd.colorscheme("nordfox")

    vim.api.nvim_set_hl(0, "NeoTreeNormal", { link = "Normal" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { link = "Normal" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { link = "Normal" })
    vim.api.nvim_set_hl(0, "HarpoonWindow", { link = "Normal" })
    vim.api.nvim_set_hl(0, "HarpoonBorder", { link = "FloatBorder" })

    vim.api.nvim_set_hl(0, "HarpoonNormal", { link = "Normal" })
    vim.api.nvim_set_hl(0, "HarpoonFloat", { link = "Normal" })
    vim.api.nvim_set_hl(0, "HarpoonFloatBorder", { link = "FloatBorder" })
    vim.api.nvim_set_hl(0, "HarpoonTitle", { link = "Title" })

    vim.api.nvim_set_hl(0, "HarpoonTelescopeNormal", { link = "Normal" })
    vim.api.nvim_set_hl(0, "HarpoonTelescopeBorder", { link = "FloatBorder" })
  end,
}
