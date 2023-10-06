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
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
end)

indent_blankline.setup {
  debounce = 100,
  indent = { char = "│", highlight = highlight },
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

