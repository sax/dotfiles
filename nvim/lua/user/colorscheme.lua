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

vim.cmd [[
  set guioptions-=T
  set guioptions+=e
  set guitablabel=%M\ %t
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R
  set guioptions-=m
  set guifont=Monaco\ 9.5
]]


vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#aaaaaa', bold = true })
