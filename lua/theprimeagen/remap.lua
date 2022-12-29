--- Set the laeader
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Save
vim.keymap.set("n", "<C-s>", vim.cmd.w)

--- Copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Opens a terminal
vim.api.nvim_set_keymap("n", "<S-t>", ":terminal<CR>", {noremap = true})

-- Enter Insert mode directly when opening a terminal
vim.api.nvim_command("augroup terminal")
vim.api.nvim_command("  au TermOpen * startinsert")
vim.api.nvim_command("augroup END")

-- map jk to escape terminal
vim.api.nvim_set_keymap("i", "jk", "<Esc>", {noremap = true})
vim.api.nvim_set_keymap("t", "jk", "<C-\\><C-n>", {noremap = true})

