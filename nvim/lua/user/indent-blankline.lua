local status_ok, indent_blankline = pcall(require, "ibl")
if not status_ok then
	return
end

local status_ok, hooks = pcall(require, "ibl.hooks")
if not status_ok then
	return
end


local highlight = {
  "RainbowBlue",
  "RainbowCyan",
  "RainbowGreen",
  "RainbowRed",
  "RainbowYellow",
  "RainbowOrange",
  "RainbowViolet",
}

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#93aabd" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#769da2" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#9cad8f" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#b19b86" })
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#bd8f92" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#b596bf" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#c5b69b" })
end)

indent_blankline.setup {
  debounce = 100,
  indent = { char = "▏", highlight = highlight },
  scope = { highlight = highlight },
  whitespace = { highlight = { "Whitespace", "NonText" } },
}

vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_filetype_exclude = {
	"help",
	"startify",
	"dashboard",
	"packer",
	"neogitstatus",
	"NvimTree",
	"Trouble",
}

