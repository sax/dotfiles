local status_ok, indent = pcall(require, "indent_blankline")
if not status_ok then
  return
end

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1c1c1c guifg=#2f2f2f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a guifg=#2f2f2f gui=nocombine]]
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

indent.setup {
    -- char = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    show_current_context = true,
    show_current_context_start = true,
    show_trailing_blankline_indent = false,
}
