local opts = { noremap = true, silent = true }

-- Visual line motions without centering
vim.api.nvim_set_keymap("n", "j", "gj", opts)
vim.api.nvim_set_keymap("n", "k", "gk", opts)

-- Paragraph motions
vim.api.nvim_set_keymap("n", "{", "{", opts)
vim.api.nvim_set_keymap("n", "}", "}", opts)

-- Search navigation without centering
vim.api.nvim_set_keymap("n", "n", "n", opts)
vim.api.nvim_set_keymap("n", "N", "N", opts)
vim.api.nvim_set_keymap("n", "*", "*", opts)
vim.api.nvim_set_keymap("n", "#", "#", opts)
vim.api.nvim_set_keymap("n", "g*", "g*", opts)
vim.api.nvim_set_keymap("n", "g#", "g#", opts)

-- Scrolling without centering
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>", opts)
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>", opts)
vim.api.nvim_set_keymap("n", "<C-f>", "<C-f>", opts)
vim.api.nvim_set_keymap("n", "<C-b>", "<C-b>", opts)

-- Jump history and marks without centering
vim.api.nvim_set_keymap("n", "''", "''", opts)
vim.api.nvim_set_keymap("n", "``", "``", opts)
vim.api.nvim_set_keymap("n", "<C-o>", "<C-o>", opts)
vim.api.nvim_set_keymap("n", "<C-i>", "<C-i>", opts)

-- H and L for line edges (no centering)
vim.api.nvim_set_keymap("n", "H", "^", opts)
vim.api.nvim_set_keymap("n", "L", "$", opts)
vim.api.nvim_set_keymap("v", "H", "^", opts)
vim.api.nvim_set_keymap("v", "L", "$", opts)

-- Quick escape from insert mode
vim.api.nvim_set_keymap("i", "jj", "<Esc>", opts)

-- Quickly remove search highlights
vim.api.nvim_set_keymap("n", "<F9>", ":nohl<CR>", opts)

-- Yank to system clipboard
vim.o.clipboard = "unnamed"

-- Go back and forward with Ctrl+O and Ctrl+I
vim.api.nvim_set_keymap("n", "<C-o>", ":back<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-i>", ":forward<CR>", opts)

-- Make ; serve as : when running commands
vim.keymap.set("n", ";", ":", { noremap = true, silent = false })
vim.keymap.set("v", ";", ":", { noremap = true, silent = false })

-- Move lines up/down with Alt-j / Alt-k in normal mode
vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", opts)
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Move selected lines up/down with Alt-j / Alt-k in visual mode
vim.api.nvim_set_keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.api.nvim_set_keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
