local actions = require("telescope.actions")
local fb_actions = require("telescope").extensions.file_browser.actions

require("telescope").setup({
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        color_devicons = true,
        file_ignore_patterns = {"node_modules", "deps", "_build"},
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
                ["<A-e>"] = fb_actions.toggle_all,
                ["<C-d>"] = fb_actions.remove,
                ["<C-e>"] = fb_actions.create,
                ["<C-f>"] = fb_actions.toggle_browser,
                ["<C-g>"] = fb_actions.goto_parent_dir,
                ["<C-h>"] = fb_actions.toggle_hidden,
                ["<C-r>"] = fb_actions.rename,
                ["<C-w>"] = fb_actions.goto_cwd,
                ["<C-y>"] = fb_actions.copy,
            },
            n = {
                ["dd"] = fb_actions.remove,
                ["e"] = fb_actions.create,
                ["f"] = fb_actions.toggle_browser,
                ["g"] = fb_actions.goto_parent_dir,
                ["h"] = fb_actions.toggle_hidden,
                ["m"] = fb_actions.move,
                ["r"] = fb_actions.rename,
                ["w"] = fb_actions.goto_cwd,
                ["y"] = fb_actions.copy,
            }
        },
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
        file_browser = {
            theme = "ivy",
        },
    },
})

require("telescope").load_extension("fzy_native")
require("telescope").load_extension("file_browser")
