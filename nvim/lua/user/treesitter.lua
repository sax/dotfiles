vim.opt.runtimepath:append("~/.local/share/nvim/treesitter")

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

local status_ok, commentstring = pcall(require, "ts_context_commentstring")
if not status_ok then
  return
end

commentstring.setup {}
vim.g.skip_ts_context_commentstring_module = true

configs.setup {
  parser_install_dir = "~/.local/share/nvim/treesitter",
  ensure_installed = {
    "bash",
    -- "comment",
    "css",
    "dockerfile",
    "eex",
    "elixir",
    "erlang",
    "graphql",
    "heex",
    "html",
    -- "javascript",
    -- "jsdoc",
    "json",
    "lua",
    "make",
    "markdown",
    -- "ruby",
    "rust",
    "toml",
    -- "typescript",
    -- "yaml",
    "zig",
  },
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "javascript", "typescript" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
    config = {
      elixir = {
        __default = '# %s',
      },
      heex = {
        __default = '<!-- %s -->',
      }
    }
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
}
