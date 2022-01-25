
require'nvim-web-devicons'.setup()

local sidebar = require("sidebar-nvim")
local opts = {
  diagnostics = {
  },
  git = {
  },
  files = {
    show_hidden = true,
    ignored_paths = { "%.git$", "%.elixir_ls$", "%.iex-history$" }
  },
  open = false,
  sections = { "git", "diagnostics", "files", "symbols" },
  section_separator = { "_________________", "" },
  symbols = {
  }
}
sidebar.setup(opts)

vim.api.nvim_set_keymap("n", "<leader><tab>", ":SidebarNvimToggle<CR>", { noremap = true})