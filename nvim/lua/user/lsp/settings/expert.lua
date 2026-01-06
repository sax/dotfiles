local masonBin = os.getenv('HOME') .. '/.local/share/nvim/mason/bin'
vim.lsp.config('expert', {
  cmd = { masonBin .. '/expert', '--stdio'},
  root_markers = { 'mix.exs', '.git' },
  filetypes = { 'elixir', 'eelixir', 'heex' },
})

vim.lsp.enable 'expert'

return {}
