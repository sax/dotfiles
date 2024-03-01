local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  -- use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter

  -- allow projects to override nvim settings
  use {
    "klen/nvim-config-local",
    config = function()
      require('config-local').setup {
        -- Default options (optional)

        -- Config file patterns to load (lua supported)
        config_files = { ".nvim.lua", ".nvimrc", ".config/nvim.lua" },

        -- Where the plugin keeps files data
        hashfile = vim.fn.stdpath("data") .. "/config-local",

        autocommands_create = true, -- Create autocommands (VimEnter, DirectoryChanged)
        commands_create = true,     -- Create commands (ConfigLocalSource, ConfigLocalEdit, ConfigLocalTrust, ConfigLocalIgnore)
        silent = false,             -- Disable plugin messages (Config loaded/ignored)
        lookup_parents = false,     -- Lookup config files in parent directories
      }
    end
  }

  -- sidebar
  use "kyazdani42/nvim-web-devicons"
  use "sidebar-nvim/sidebar.nvim"

  -- color schemes
  use "chriskempson/base16-vim"
  use "LunarVim/darkplus.nvim"
  use 'beauwilliams/statusline.lua' -- adds state, git branch to status line
  use {
    -- show lines across indent markers
    'lukas-reineke/indent-blankline.nvim',
    tag = 'v3.5.3'
  }

  -- use "moll/vim-bbye"
  -- use "nvim-lualine/lualine.nvim"
  -- use "akinsho/toggleterm.nvim"
  -- use "ahmedkhalf/project.nvim"
  -- use "lewis6991/impatient.nvim"
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  -- use "folke/which-key.nvim"

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- The silver searcher
  use "mileszs/ack.vim"

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/mason.nvim" -- simple to use language server installer
  use "williamboman/mason-lspconfig.nvim"
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "RRethy/vim-illuminate"

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use { "synchronal/related-files.nvim", requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" } }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    tag = 'v0.9.2',
    run = ":TSUpdate",
  }
  -- use "p00f/nvim-ts-rainbow" -- color parens based on depth
  use "JoosepAlviste/nvim-ts-context-commentstring" -- gcc for comments
  use "tpope/vim-commentary" -- make 👆 work with languages

  -- Git
  use "lewis6991/gitsigns.nvim"
  use "APZelos/blamer.nvim"

  -- Tests
  use 'vim-test/vim-test'
  use 'esamattis/slimux'
  use 'tpope/vim-projectionist'
  use 'andyl/vim-projectionist-elixir'

  -- Sorting
  use 'sQVe/sort.nvim'

  -- Show hex colors
  use 'norcalli/nvim-colorizer.lua'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
