vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set({"n","v","i"}, "<C-s>", "<C-c>:update<cr>")

-- move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- merge lines
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor centered when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor centered when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- format
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)

-- paste and override preserving yank
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy paragraph
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- delete paragraph
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- replace word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
