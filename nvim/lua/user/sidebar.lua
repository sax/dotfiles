local status_ok, devicons = pcall(require, "nvim-web-devicons")
if not status_ok then
  return
end

devicons.setup()

local status_ok, sidebar = pcall(require, "sidebar-nvim")
if not status_ok then
  return
end

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
  sections = { "diagnostics", "files", "symbols", "git" },
  section_separator = { "_________________", "" },
  symbols = {
  }
}
sidebar.setup(opts)

