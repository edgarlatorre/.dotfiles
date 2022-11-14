local ls = require('luasnip')
local types = require('luasnip.util.types')
local s = ls.s
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

require("luasnip.loaders.from_vscode").lazy_load()

ls.config.set_config {
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { " <- Current Choice", "NonTest" } },
      },
    },
  },
}

ls.add_snippets("typescriptreact", {
  s('cfu', fmt("const {} = ({}) => {{\n\t{}\n}}", { i(1, "name"), i(2), i(0) }))
})

-- jump to the next item
vim.keymap.set({ 'i', 's' }, '<c-k>', function()
  if ls.expand_or_jump() then
    ls.expand_or_jump()
  end
end, { silent = true })

-- jump to the previous item
vim.keymap.set({ "i", "s" }, "<c-j>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

-- select within a list of options
vim.keymap.set("i", "<c-l>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

-- source snippets
vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.dotfiles/nvim/.config/nvim/lua/edgar/plugins/luasnip.lua<CR>")
