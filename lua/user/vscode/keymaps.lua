
local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key - space is not working as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- "_ is the black hole register, "_d deletes to the blackhole register, \ is
-- the following though is not working. Added which key bindings for space + d to send "_d
keymap("n", "<leader>d", '"_d', opts)
keymap("x", "<leader>d", '"_d', opts)

-- pasting without copying when deleting the selected text
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- vscode specific bindings
keymap("n", "<C-o>",":call VSCodeNotify('workbench.action.navigateBack')<CR>",opts)
keymap("x", "<C-o>",":call VSCodeNotify('workbench.action.navigateBack')<CR>",opts)

keymap("n", "<C-i>",":call VSCodeNotify('workbench.action.navigateForward')<CR>",opts)
keymap("x", "<C-i>",":call VSCodeNotify('workbench.action.navigateForward')<CR>",opts)

keymap("n","<C-j>",":call VSCodeNotify('workbench.action.navigateDown')<CR>",opts)
keymap("n","<C-j>",":call VSCodeNotify('workbench.action.navigateDown')<CR>",opts)
keymap("n","<C-k>",":call VSCodeNotify('workbench.action.navigateUp')<CR>",opts)
keymap("n","<C-k>",":call VSCodeNotify('workbench.action.navigateUp')<CR>",opts)
keymap("n","<C-h>",":call VSCodeNotify('workbench.action.navigateLeft')<CR>",opts)
keymap("n","<C-h>",":call VSCodeNotify('workbench.action.navigateLeft')<CR>",opts)
keymap("n","<C-l>",":call VSCodeNotify('workbench.action.navigateRight')<CR>",opts)
keymap("n","<C-l>",":call VSCodeNotify('workbench.action.navigateRight')<CR>",opts)

-- https://github.com/vscode-neovim/vscode-neovim/issues/58#issuecomment-630551787
-- if recording a macro dont map j --> gj or k -->gk
local moveCursor = function(direction)
    if vim.fn.reg_recording() == "" and vim.fn.reg_executing() == "" then
        return "g"..direction
    else
        return  direction
    end

end
keymap("n","j",moveCursor("j"), {silent = true})
keymap("n","k",moveCursor("k"), {silent = true})

-- comments
keymap("n","gc",":VSCodeCommentary<CR>",opts)
keymap("x","gc",":VSCodeCommentary<CR>",opts)
