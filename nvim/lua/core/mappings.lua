vim.g.mapleader = " "

-- Use 'space h' to clear search highlights after search
vim.keymap.set("n", "<leader>h", ':nohlsearch<CR>')

-- use 'space y' to copy selection to clipboard
vim.keymap.set({"v"}, "<leader>y", [["+y"]])

vim.opt.cmdheight = 1 - vim.opt.cmdheight._value
vim.keymap.set("n", "<leader>tcl",
  function() vim.opt.cmdheight = 1 - vim.opt.cmdheight._value end,
  { desc = "Toggle cmdheight" }
)

-- use 'space w q' or 'space q' to quit editor
vim.keymap.set("n", "<leader>wq", ':wqa!<CR>')
vim.keymap.set("n", "<leader>q", ':qa!<CR>')

-- todo: when pasting do not copy replaced code

