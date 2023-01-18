
local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ""
vim.g.maplocalleader = ""

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --


-- primeagen tricks
-- page down and set line to middle of screen
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- search and set line to middle of screen, zv to unfold if folded
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- "\"_ is the black hole register, "_d deletes to the blackhole register, \ is
-- "added to escape
keymap("n", "<leader>d", "_d", opts)
keymap("x", "<leader>d", "_d", opts)
keymap("x", "<leader>p", "_dp", opts)

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
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


-- vscode specific bindings
keymap("n", "<C-o>",":call VSCodeNotify('workbench.action.navigateBack')<CR>",opts)
keymap("x", "<C-o>",":call VSCodeNotify('workbench.action.navigateBack')<CR>",opts)

keymap("n", "<C-i>",":call VSCodeNotify('workbench.action.navigateForward')<CR>",opts)
keymap("x", "<C-i>",":call VSCodeNotify('workbench.action.navigateForward')<CR>",opts)

-- close sidebar using <C-b>
keymap("n","<C-b>",":call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>",opts)
keymap("x","<C-b>",":call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>",opts)


keymap("n","<C-j>",":call VSCodeNotify('workbench.action.navigateDown')<CR>",opts)
keymap("n","<C-j>",":call VSCodeNotify('workbench.action.navigateDown')<CR>",opts)
keymap("n","<C-k>",":call VSCodeNotify('workbench.action.navigateUp')<CR>",opts)
keymap("n","<C-k>",":call VSCodeNotify('workbench.action.navigateUp')<CR>",opts)
keymap("n","<C-h>",":call VSCodeNotify('workbench.action.navigateLeft')<CR>",opts)
keymap("n","<C-h>",":call VSCodeNotify('workbench.action.navigateLeft')<CR>",opts)
keymap("n","<C-l>",":call VSCodeNotify('workbench.action.navigateRight')<CR>",opts)
keymap("n","<C-l>",":call VSCodeNotify('workbench.action.navigateRight')<CR>",opts)

keymap("n", "<Leader>w", ":call VSCodeNotify('whichkey.show')<CR>",opts)
keymap("x", "<Leader>w", ":call VSCodeNotify('whichkey.show')<CR>",opts)
