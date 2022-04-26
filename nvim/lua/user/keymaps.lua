local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap comma as leader key
-- keymap("", "<Comma>", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Panes --
keymap("n", "<M-Down>", ":resize -1<CR>", opts)
keymap("n", "<M-Up>", ":resize +1<CR>", opts)
keymap("n", "<M-Left>", ":vertical resize -1<CR>", opts)
keymap("n", "<M-Right>", ":vertical resize +1<CR>", opts)

-- Selection --
keymap("n", "<space>", ":noh<CR>", opts)

-- Tests --
keymap("n", "<leader>gt", ":A<CR>", opts)
keymap("n", "<leader>gv", ":AV<CR>", opts)
keymap("n", "<leader>t", ":TestNearest<CR>", opts)
keymap("n", "<leader>T", ":TestFile<CR>", opts)
keymap("n", "<leader>a", ":TestSuite<CR>", opts)
keymap("n", "<leader>r", ":TestLast<CR>", opts)
keymap("n", "<leader>g", ":TestVisit<CR>", opts)

-- Fast saving --
keymap("n", "<leader>w", ":wa", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Telescope
-- Fuzzy finder
keymap("n", "<F1>", "<cmd>Telescope lsp_document_symbols<CR>", opts)
keymap("n", "<F2>", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "<F3>", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<F4>", "<cmd>Telescope related_files<CR>", opts)
keymap("n", "<F7>", "<cmd>Telescope lsp_references<CR>", opts)
keymap("n", "<C-e>", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "<C-j>", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>", opts)

-- Sidebar
keymap("n", "<leader><tab>", ":SidebarNvimToggle<CR>", opts)

-- LSP / null-ls
keymap("n", "<leader>f", ":Format<CR>", opts)

