local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- NORMAL --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==g", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==g", opts)

-- Move cursor to end/beginning
keymap("n", "B", "^", opts)
keymap("n", "E", "$", opts)

-- keymap("n", "<leader>h", "<cmd>nohlsearch<cr>", opts)
-- Plugins --
-- Alpha --
keymap("n", "<leader>a", "<cmd>Alpha<cr>", opts)
-- Telescope --
keymap("n", "<leader>b", "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)
keymap("n", "<leader>F", "<cmd>Telescope live_grep theme=ivy<cr>", opts)
-- NvimTree --
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)
-- GitSigns --
keymap("n", "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>", opts)
keymap("n", "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", opts)
keymap("n", "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", opts)
keymap("n", "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>", opts)
-- Lsp --
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{async=true}<cr>", opts)
keymap("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
-- VimTex --
keymap("n", "<localleader>ll", "<cmd>VimtexCompile<cr>", opts)
keymap("n", "<localleader>lv", "<cmd>VimtexView<cr>", opts)
-- MarkdownPreview --
keymap("n", "<localleader>mp", "<cmd>MarkdownPreview<cr>", opts)

-- INSERT --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)

-- Delete a word with ctr+bs/ctr+del
keymap("i", "<C-Backspace>", "<ESC>bdwi", opts)
keymap("i", "<C-Delete>", "<ESC>dwi", opts)

-- VISUAL --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Move cursor to end/beginning
keymap("v", "B", "^", opts)
keymap("v", "E", "$", opts)

-- VISUAL BLOCK --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
