vim.g.mapleader = " "

local map = vim.keymap.set

-- NvimTree
map('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Buffers
map('n', '<tab>', ':tabn<CR>')
map('n', '<s-tab>', ':tabp<CR>')

-- Move by words
map('i', '<C-Left>', '<C-o>b', { noremap = true })
map('i', '<C-Right>', '<C-o>w', { noremap = true })

-- Delete by words
map('i', '<C-BS>', '<C-w>', { noremap = true })
map('i', '<C-Del>', '<C-o>dw', { noremap = true }) 

-- Open new empty buffer
vim.keymap.set("n", "<leader>bn", ":enew<CR>", { noremap = true, silent = true })

-- Open new file (prompt for filename)
vim.keymap.set("n", "<leader>be", ":edit ", { noremap = true })

-- Split + new buffer
vim.keymap.set("n", "<leader>bs", ":split<CR>:enew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bv", ":vsplit<CR>:enew<CR>", { noremap = true, silent = true })

-- Split horizontal
vim.keymap.set("n", "<leader>-", ":split<CR>", { noremap = true, silent = true })

-- Split vertical
vim.keymap.set("n", "<leader>|", ":vsplit<CR>", { noremap = true, silent = true })

-- Between windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Cursor in center
map('n', 'j', 'jzz', { noremap = true })
map('n', 'k', 'kzz', { noremap = true })
map('n', 'G', 'Gzz', { noremap = true })
