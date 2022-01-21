
require'nvim-web-devicons'.setup()

local sidebar = require("sidebar-nvim")
local opts = {
  diagnostics = {
    icon = "??"
  },
  git = {
    icon = "√√"
  },
  files = {
    icon = "()",
    show_hidden = true,
    ignored_paths = { "%.git$", "%.elixir_ls$", "%.iex-history$" }
  },
  open = true,
  sections = { "git", "diagnostics", "files", "symbols" },
  section_separator = { "_________________", "" },
  symbols = {
    icon = "ƒƒ"
  }
}
sidebar.setup(opts)