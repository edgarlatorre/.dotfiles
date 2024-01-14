return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				component_separators = "",
				section_separators = "",
				always_divide_middle = true,
				globalstatus = true,
				theme = "catppuccin-frappe",
			},
		})
	end,
}
