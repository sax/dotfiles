local colorscheme = "darkplus"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found")
  return
end

 vim.cmd [[
 try
   colorscheme base16-ia-dark
   set background=dark
 catch /^Vim\%((\a\+)\)\=:E185/
   set background=dark
 endtry
 ]]

vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#aaaaaa', bold = true })
vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#aaaaaa', bold = true })
vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#aaaaaa', bold = true })
vim.opt.fillchars = { stl = '—', stlnc = '—' }
