vim.g.mapleader = " "

-- Use 'space h' to clear search highlights after search
vim.keymap.set("n", "<leader>h", ':nohlsearch<CR>')

-- use 'space y' to copy selection to clipboard
vim.keymap.set({"v"}, "<leader>y", [["+y"]])
