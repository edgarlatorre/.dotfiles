return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local C = require("catppuccin.palettes").get_palette("frappe")
    local custom_cat = require("lualine.themes.catppuccin")

    custom_cat.insert.a.bg = C.sky
    custom_cat.insert.b.fg = C.sky
    custom_cat.command.a.bg = C.peach
    custom_cat.command.b.fg = C.peach

    require("lualine").setup({
      options = {
        icons_enabled = true,
        component_separators = "",
        section_separators = "",
        always_divide_middle = true,
        globalstatus = true,
        theme = custom_cat,
      },
      -- sections = { lualine_c = { require("auto-session.lib").current_session_name } },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
