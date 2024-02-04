return {
  {
    "edgarlatorre/project-urls",
    config = function()
      local project_urls = require("project-urls")
      vim.keymap.set("n", "<leader>gu", function()
        project_urls.open_menu()
      end)
    end,
  },
}
